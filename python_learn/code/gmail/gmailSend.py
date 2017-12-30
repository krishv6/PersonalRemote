#!/usr/bin/python3.4
"""
Class implemented to send out gmail to multiple people with multiple attachment files
Need to create an app password in gmail and save the app password in a file in filesystem
App password is plaintext. Need to do some sort of encryption.
"""
import smtplib
import argparse
from os.path import basename
from email.mime.application import MIMEApplication
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from email.utils import COMMASPACE, formatdate

GMAIL_SERVER='smtp.gmail.com'
GMAIL_SERVER_PORT='587'
MY_SIGN='Thanks and Regards'


class myGmailSend():
    def __init__(self,fromMail,toMail,subject,body,passFile,myName,attachFiles=None):
        self.fromMail = fromMail
        self.toMail = toMail
        self.subject = subject
        self.body = body
        self.passFile = passFile
        self.attachFiles = attachFiles
        self.myName = myName
    def __enter__(self):
        try:
            with open(self.passFile,mode='rt',encoding='utf-8') as readPass:
                self.gmailPass = readPass.read()
            
            self.server = smtplib.SMTP(GMAIL_SERVER, GMAIL_SERVER_PORT)
            self.server.ehlo()
            self.server.starttls()
            self.server.login(self.fromMail, self.gmailPass)
            """
            self.body = '\r\n'.join(['To: %s' % self.toMail,
                                'From: %s' % self.fromMail,
                                'Subject: %s' % self.subject,
                                '', self.body,'',MY_SIGN,self.myName])
            """
            msg = MIMEMultipart()
            msg['From'] = self.fromMail
            msg['To'] = COMMASPACE.join(self.toMail)
            msg['Date'] = formatdate(localtime=True)
            msg['Subject'] = self.subject
            msg.attach(MIMEText('\r\n'.join([self.body,'',MY_SIGN,self.myName])))

            if self.attachFiles is not None:
                for attachFile in self.attachFiles:
                    with open(attachFile, "rb") as fileName:
                        part = MIMEApplication(fileName.read(),Name=basename(attachFile))
                        part['Content-Disposition'] = 'attachment; filename="%s"' % basename(attachFile)
                        msg.attach(part)

            # self.server.sendmail(self.fromMail,[self.toMail],self.body)
            self.server.sendmail(self.fromMail,self.toMail,msg.as_string())
        except Exception as e:
            raise RuntimeError(e)
    
    def __exit__(self,type, value, traceback):
        self.server.quit()
    


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("-s","--subject", help="Subject of Email",required=True)
    parser.add_argument("-f","--fromMail", help="Person who is sending Email",required=True)
    parser.add_argument("-t","--toMail",nargs='+', help="Person who are receiving Email",required=True)
    parser.add_argument("-b","--body", help="Body of Email",required=True)
    parser.add_argument("-p","--passFile", help="File which has gmail password",required=True)
    parser.add_argument("-n","--myName", help="Name of person in Signature",required=True)
    parser.add_argument("-a","--attachments",nargs='+', help="Attachment of Email")
    args = parser.parse_args()
    try:
        with myGmailSend(args.fromMail,args.toMail,args.subject,args.body,args.passFile,args.myName,args.attachments):
            pass
    except Exception as e:
        raise RuntimeError("Error sending mail : "+str(e))
