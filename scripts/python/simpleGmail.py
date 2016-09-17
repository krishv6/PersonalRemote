#!/usr/bin/python3.4
import smtplib

TO = 'kvig100@gmail.com'
SUBJECT = 'TEST MAIL'
TEXT = 'Here is a message from python3.'
MAIL_SECRET_FILE = '/home/pi/private/mailSecret'
# Gmail Sign In
gmail_sender = 'kvig200@gmail.com'
try:
    file = open(MAIL_SECRET_FILE)
except:
    print('mail secret not found')
    exit(1)
gmail_passwd = file.read()

server = smtplib.SMTP('smtp.gmail.com', 587)
server.ehlo()
server.starttls()
server.login(gmail_sender, gmail_passwd)

BODY = '\r\n'.join(['To: %s' % TO,
                    'From: %s' % gmail_sender,
                    'Subject: %s' % SUBJECT,
                    '', TEXT])

try:
    server.sendmail(gmail_sender, [TO], BODY)
    print ('email sent')
except:
    print ('error sending mail')

server.quit()
