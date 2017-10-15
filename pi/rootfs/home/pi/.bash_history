cd /etc/wpa_supplicant/
sudo vi wpa_supplicant.conf 
sudo nano wpa_supplicant.conf 
cat wpa_supplicant.conf 
sudo cat wpa_supplicant.conf 
reboot
sudo reboot
wpa_supplicant 
wpa_supplicant -Dnl80211 -iwlan0 -c /etc/wpa_supplicant/
ifconfig 
cd /etc/wpa_supplicant/
ls
cat wpa_supplicant.conf 
sudo cat wpa_supplicant.conf 
cd -
wpa_supplicant -Dnl80211 -iwlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf 
sudo wpa_supplicant -Dnl80211 -iwlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf 
sudo nano /etc/wpa_supplicant/wpa_supplicant.conf 
clear
sudo wpa_supplicant -Dnl80211 -iwlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf 
sudo nano /etc/wpa_supplicant/wpa_supplicant.conf 
sudo wpa_supplicant -Dnl80211 -iwlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf 
sudo nano /etc/wpa_supplicant/wpa_supplicant.conf 
sudo wpa_supplicant -Dnl80211 -iwlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf 
sudo nano /etc/wpa_supplicant/wpa_supplicant.conf 
sudo iwlist wlan0    scan
sudo iwlist wlan0    scan > fie
vi fie 
sudo nano /etc/wpa_supplicant/wpa_supplicant.conf 
sudo wpa_supplicant -Dnl80211 -iwlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf 
sudo nano /etc/wpa_supplicant/wpa_supplicant.conf 
sudo ifdown wlan0 && sudo ifup wlan0
ifconfig 
sudo ifdown wlan0 
sudo ifup wlan0
ifconfig 
sudo nano /etc/wpa_supplicant/wpa_supplicant.conf 
sudo reboot now
ifconfig 
sudo reboot now
df -h
sudo raspi-config 
df -h
sudo apt-get update
sudo apt-get upgrade
sudo crontab -e
ls
cd /opt/
ls
cd 
ls
pwd
mkdir python
cd python/
ls
cd ../
mkdir images
cd images/
ls
pwd
raspistill -o firstImage.jpg
pwd
exit
cd python/
ls
./record.py 
sudo apt-get install python3.4
ls
./record.py 
sudo apt-get install python3-picamera
./record.py 
vi record.py 
mkdir ~/camera
./record.py 
cd ../camera/
ls
sudo crontab -e
sudo reboot now
ps -ef | grep py
cd camera/
ls
sudo add-apt-repository ppa:iconnor/zoneminder
sudo apt-add-repository ppa:iconnor/zoneminder
apt
lsb_release -a 2>/dev/null | grep Codename | awk '{print $2}'
sudo su
clear
sudo apt-get update
cd camera/
ls
ls -lrt
exit 
sudo apt install apache2
ps -ef | grep ap
ps -ef | grep apac
cd /etc/apache2/
ls
netstat -ln
ifconfig 
clear
cd camera/
ls -lltr
exit
cd /etc/apache2/
ls
vi apache2.conf 
ls
vi apache2.conf 
ps -ef  | grep ap
ls /var/www/
ls /var/www/html/
ls /var/www/html/index.html 
vim /var/www/html/index.html 
vi /var/www/html/index.html 
apache2 -l
cat sites-available/default-ssl.conf 
ls
act sites-available/000-default.conf 
cat sites-available/000-default.conf 
ls
vi apache2.conf 
sudo apt-get install vim
vim apache2.conf 
apache2 -v
ls
vim apache2.conf 
grep -Rin Listen .
vi ports.conf 
sudo vim ports.conf 
cat ports.conf 
sudo service apache2 restart
netstat -ln
ls
sudo vim ports.conf 
grep -Rin VirtualHost .
vi sites-enabled/000-default.conf 
sudo vim sites-enabled/000-default.conf 
sudo service apache2 restart
mkdir /home/pi/www
sudo vim sites-enabled/000-default.conf 
sudo service apache2 restart
sudo vim sites-enabled/000-default.conf 
ls
vi apache2.conf 
sudo vim apache2.conf 
sudo vim sites-enabled/000-default.conf 
sudo service apache2 restart
ls
cd /home/pi/www/
ls
ls ../camera/
ln -sf ../camera/ cctv
ls -ltr
ls /etc/ssl/
ls /etc/ssl/certs/
ls /etc/ssl
ls /etc/ssl/private/
sudo su
sudo service apache2 restart
systemctl status apache2.service
cd /etc/apache2/
ls
vi sites-available/000-default.conf 
ls /var/log/apache2/
ls /var/log/apache2/error.log 
vim /var/log/apache2/error.log 
ps -ef | grep ap
ps -ef | grep apache
clear
vim /var/log/apache2/error.log 
sudo service apache2 start
journalctl -xn
sudo service apache2 start
sudo vi sites-available/000-default.conf 
sudo service apache2 start
sudo vi sites-available/default-ssl.conf 
sudo vi sites-available/000-default.conf 
sudo vi sites-available/default-ssl.conf 
sudo vi sites-available/000-default.conf 
sudo service apache2 restart
sudo vi sites-available/000-default.conf 
journalctl | tail
apache2ctl configtest
grep -Rin LoadModule .
grep -Rin LoadModule . | grep -Rin ssl
grep -Rin LoadModule .
grep -Rin 'LoadModule ssl' .
ls /usr/lib/apache2/modules/mod_ssl.so 
grep -Rin ssl.load .
grep -Rin 'ssl.load' .
ls mods-available/
ls mods-available/ssl.load 
vim mods-available/ssl.load 
sudo a2enmod ssl
ps -ef | grep apache
apache2ctl configtest
sudo service apache2 start
sudo vi sites-available/000-default.conf 
sudo service apache2 start
netstat -ln
sudo vi sites-available/000-default.conf 
cd /var/log/apache2/
ls
vi access.log 
vi error.log 
;s
ls
cd /etc/apache2/
ls
cd sites-available/
ls
vi 000-default.conf 
cat 000-default.conf  
cat 000-default.conf  | grep crt
cat 000-default.conf  | grep ket
cat 000-default.conf  | grep key
ls /etc/ssl/apache2/server.crt
/etc/ssl/apache2/kv-ca-chain.crt
ls /etc/ssl/apache2/kv-ca-chain.crt
ls /etc/ssl/apache2/server.key
openssl x509 -in /etc/ssl/apache2/server.crt 
openssl x509 -in /etc/ssl/apache2/server.crt -noout -text
ls
openssl x509 -in /etc/ssl/apache2/kv-ca-chain.crt -noout -text
cat /etc/ssl/apache2/kv-ca-chain.crt 
clear
ls
vi 000-default.conf 
sudo vim 000-default.conf 
sudo service apache2 restart
vi /var/log/apache2/error.log 
sudo vim 000-default.conf 
netstat -ln
sudo vim 000-default.conf 
sudo vim default-ssl.conf 
sudo cat default-ssl.conf  | grep SSLVerify
sudo vim default-ssl.conf 
sudo vim 000-default.conf 
sudo service apache2 restart
sudo vim default-ssl.conf 
vi /var/log/apache2/error.log 
vi /var/log/apache2/access.log 
sudo vim 000-default.conf 
sudo service apache2 restart
nmap 49.207.177.150
sudo apt-get install nmap
nmap 49.207.177.150
ping 49.207.177.150
nmap 49.207.177.150
cd ../
vi apache2.conf 
sudo vim apache2.conf 
grep -Rin Listen .
vi ports.conf 
sudo vim ports.conf 
sudo service apache2 restart
nmap 49.207.177.150
sudo vim ports.conf 
sudo service apache2 restart
nmap 49.207.177.150
sudo vim /etc/ssh/sshd_config 
sudo service ssh restart
ls
df -h
ls
cd /opt/
l
cd 
ls
l
ls
clear
ls
df -h
mount
sudo blkid
sudo reboot now
mount
df -h
ls /dev/
ls /dev/sda1 
mkdir hard_disk
pwd
sudo mount /dev/sda1 /home/pi/hard_disk/
ls /home/pi/hard_disk/
mount
ls
cd hard_disk/
ls 
ç
ls 
vi /var/log/syslog 
vim /var/log/syslog 
ls -ltr
cd ../
ls
rm -rf hard_disk/
sudo rm -rf hard_disk/
ls
df -h
mount
sudo reboot now ; exit
sudo umount /home/pi/hard_disk 
ls
cd hard_disk/
ls
pwd
ls
df -h
clear
cd /opt/
ls
cd 
ls
sudo apt-get install --no-install-recommends bluetooth
sudo service bluetooth status
sudo service bluetooth restart
sudo service bluetooth status
sudo apt-get remove --no-install-recommends bluetooth
sudo service bluetooth status
hciconfig -a
sudo blutoothctl
sudo apt-get install bluetooth bluez blueman
exit
sudo reboot now ; exit
sudo service bluetooth status
sudo raspi-config 
ls
sudo bluetoothctl
ls
btproxy
ls
date
ps -ef | grep ntp
ls /usr/share/zoneinfo/
ls /usr/share/zoneinfo/Asia/Calcutta 
cat /usr/share/zoneinfo/Asia/Calcutta 
ls -ltr /usr/share/zoneinfo/Asia/Cal
cat /usr/share/zoneinfo/America/Chicago 
cat /usr/share/zoneinfo/America/New_York 
cat /etc/localtime 
sudo ln -sf /usr/share/zoneinfo/Asia/Kolkata /etc/localtime 
reboot && exit
sudo reboot ; exit
date
cat python/record.py 
vim python/record.py 
cd python/
ls
mv record.py record_old.py 
cp record_old.py record.py 
vi record.py 
vi record
vi record.py 
diff record.py record_old.py 
ls
reboot && exit
sudo reboot ; exit
cd camera/
ls
ls -ltr
rm video_2016_09_17_21_20_12_Sat_1800secs.h264
ls -ltr
sudo vim /etc/ssh/sshd_config 
vim /etc/issue.net 
sudo vim /etc/issue.net 
exit
sudo service ssh restart 
exit
ls -ltr
mkdir private
ls
cd private/
ls
cat ../python/gmail.py 
echo -n 'fbzmfakkiujpbxdc' > mailSecret
pwd
vim ../python/gmail.py 
../python/gmail.py 
vim ../python/gmail.py 
../python/gmail.py 
vim ../python/gmail.py 
../python/gmail.py 
vim ../python/gmail.py 
../python/gmail.py 
exit
sudo crontab -e
sudo reboot ; exit
echo $DISPLAY
ls
cd python/
ls
rm record_old.py 
ls
vi gmail.py
whereis python3
vi gmail.py
vim gmail.py
ls ~/.vimrc
sudo vim ~/.vimrc
vim gmail.py
sudo vim ~/.vimrc
vim gmail.py
cat gmail.py 
ls
chmod +x gmail.py 
./gmail.py 
vim gmail.py
cat gmail.py
./gmail.py 
ps -ef | grep ntp
cat /etc/init.d/ntp 
vi /etc/init.d/ntp 
kismet
/bin/bash -v
/bin/bash --help
sudo apt-get update
sudo apt-get upgrade
/bin/bash --help
ntp-wait 
ntp-wait -v
ps -ef | grep ntp
sudo service ntp status
sudo service ntp stop
ntp-wait -v
echo $?
ntp-wait -v
echo $?
sudo service ntp status
ntp-wait -v
sudo service ntp start
ntp-wait -v
date
ntp-wait -n 5 -s n
ntp-wait -n 5 -s 2
ntp-wait -n 5 -s 2 -v
sudo service ntp stop
ntp-wait -n 5 -s 2 -v
sudo service ntp start
nmap 8.8.8.8
ping 8.8.8.8
ls
cd camera/
ls
rm *
sudo rm *
ls
exit
sudo crontab -e
sudo reboot ; exit
ls
wget http://www.kismetwireless.net/download.shtml
ls
cat download.shtml 
rm download.shtml 
ls
exit
ps -ef | grep make
top
uptime 
cd kismet/
ls
cd kismet-2016-07-R1/
ls
make
ls
rm -rf kismet/
cd camera/
ls
ls -ltr
ps -ef | grep py
exit
sudo reboot ; exit
ps -ef | grep ap
sudo vi /etc/hosts
netstat -ln
pwd
cd www/
ls
vim index.html
ls
vi index.html 
mv ~/vimrc ~/.vimrc 
cat ~/.vimrc 
sudo vim index.html 
ls
sudo vim /etc/init.d/cctvRecord
sudo chmod /etc/init.d/cctvRecord
sudo chmod +x /etc/init.d/cctvRecord -v 
sudo /etc/init.d/cctvRecord
sudo vim /etc/init.d/cctvRecord
sudo service cctvRecord start
sudo service cctvRecord stop
sudo update-rc.d cctvRecord defaults
sudo service cctvRecord start
ps -ef | grep pyt
sudo kill 467
ps -ef | grep pyt
sudo service cctvRecord stop
sudo service cctvRecord start
ps -ef | grep pyt
cat /etc/init.d/cctvRecord 
cat /var/log/cctvRecord.py.log 
cat /var/run/cctvRecord.py.pid 
ls
vi index.html 
ls
cd ../camera/
ls
cd ..
ls
cd python/
ls
sudo reboot ;exit
cd python/
ls
sudo crontab -e
diff cctvRecord.py record.py 
ps -ef | grep python
ls
cd www/
ls
cd  cctv
ls
pwd
cd -
ls
cd www/
ls
cp index.html cctv
cd cctv
ls
vim index.html
ps -ef | grep cctv
vim index.html
sudo service cctvRecord stop
ps -ef | grep cctv
sudo service cctvRecord start
ps -ef | grep cctv
ls
cat index.html 
sudo reboot ; exit
ls
ps -ef | grep python
ls
cd www/
cd cctv
ls
vi StartCameraService.sh
cp StartCameraService.sh StopCameraService.sh 
vi StopCameraService.sh 
ls
chmod +x St*
ls
cat StartCameraService.sh 
ls
vim index.html 
ps -ef | grep cctv
ls
./StopCameraService.sh 
sudo ./StopCameraService.sh 
ps -ef | grep cctv
ls
ps -ef | grep cctv
cat ../index.html 
cd ../
ls
vi index.html 
cd cctv
vi index.html 
ps -ef | grep cctv
ls
vi StartCameraService.sh 
vi StopCameraService.sh 
ps -ef | grep cctv
mkdir cgi-bin
ls -ltr
chmof 755 cgi-bin/
chmod 755 cgi-bin/
ls -ltr
cd /etc/apache2/
ls
cd sites-available/
l
ls
sudo vim 000-default.conf 
apache2ctl configtest
sudo service apache2 restart
cd /home/pi/
ls
cd www/
ls
cd cctv
ls
cp St* ~/cgi-bin/
vi index.html 
cat index.html 
clear
ps -ef | grep cctv
cd ../
cd cgi-bin/
ls
vi StartCameraService.sh 
vi StopCameraService.sh 
cd /etc/apache2/
ls
vi apache2.conf 
sudo vim sites-enabled/000-default.conf 
sudo vim apache2.conf 
sudo service apache2 restart
ls
sudo vim sites-enabled/000-default.conf 
cd /home/pi/
ls
cd www/
ls
ln -sf ../cgi-bin/ cgi-bin
ls -ltr
ls
;s
cd /etc/apache2/sites-enabled/
ls
cat 000-default.conf 
ls -ltra
ls ../conf-available/serve-cgi-bin.conf
cat ../conf-available/serve-cgi-bin.conf
apache2ctl -M
apache2ctl -M | grep cgi
cd ..
grep -Rin LoadModule .
a2enmod 
cat mods-enabled/filter.load 
a2enmod cgi
sudo a2enmod cgi
sudo service apache2 restart
cd /home/
ls
cd pi/
ls
cd www/
ls
cd cgi-bin
ls
cd ../
ls
cd cctv
ls
vi index.html 
ls
cd ../
sl
ls
cd cgi-bin
ls
cd ../
ls
cd cctv
vi index.html 
cd /etc/apache2/
apache2ctl -M | grep cgi
;s
ls
cd mods-available/
ls
cd ../
ls
cd sites-available/
ls
cat 000-default.conf 
cat ../conf-available/serve-cgi-bin.conf
vi 000-default.conf 
sudo vim 000-default.conf 
apache2ctl checkconfig
apache2ctl configtest
vi 000-default.conf 
sudo vim 000-default.conf 
apache2ctl configtest
sudo service apache2 restart
sudo vim 000-default.conf 
sudo service apache2 restart
ls
cd /home/pi/
ls
cd www/
ls
rm -fr cgi-bin
l
ls
cd /etc/apache2/
ls
cd sites-available/
ls
cat 1 
sudo rm 1
ls
cat 000-default.conf 
cat /var/log/apache2/error.log
cat /var/log/apache2/access.log
clear
tail -F /var/log/apache2/access.log
clear
tail -F /var/log/apache2/error.log
ls
vi 000-default.conf 
sudo vim 000-default.conf 
apache2ctl configtest
sudo service apache2 restart
cd /home/pi/
ls
cd www/
ls
vi index.html 
vi /etc/apache2/sites-available/000-default.conf 
;s
ls
vi index.html 
vi /etc/apache2/sites-available/000-default.conf 
sudo vim /etc/apache2/sites-available/000-default.conf 
tail -F /var/log/apache2/access.log
tail -F /var/log/apache2/error.log
ls
vi index.html 
sudo vim /etc/apache2/sites-available/000-default.conf 
sudo service apache2 restart
ls
sudo vim /etc/apache2/sites-available/000-default.conf 
cd /etc/apache2/
ls
vi apache2.conf 
vim apache2.conf 
cd conf-available/
ls
cd ../
ls
cd conf-enabled/
ls
cd ..
ls
cd sites-available/
ls
vi 000-default.conf 
sudo vim 000-default.conf 
sudo service apache2 restart
sudo vim 000-default.conf 
sudo service apache2 restart
sudo vim 000-default.conf 
cd /home/pi/
ls
ls -ltr
ls camera/
sudo vim 000-default.conf 
cd /etc/apache2/sites-available/
sudo vim 000-default.conf 
vim ../apache2.conf 
sudo vim 000-default.conf 
sudo service apache2 restart
sudo vim 000-default.conf 
sudo service apache2 restart
cd /home/pi/www/
ls
ls -ltr cctv
vi index.html 
rm -rf cctv
ls
cd ../
cd camera/
ls
vi index.html 
cd ../www/
vi index.html 
ls
cd /etc/apache2/
ls
vi sites-available/000-default.conf 
ls
vi sites-enabled/000-default.conf 
sudo vim sites-enabled/000-default.conf 
sudo vim sites-available/000-default.conf 
vi apache2.conf 
vim apache2.conf 
sudo vim sites-available/000-default.conf 
sudo service apache2 restart
sudo vim sites-available/000-default.conf 
sudo service apache2 restart
sudo vim sites-available/000-default.conf 
ls
sudo vim sites-available/000-default.conf 
sudo vim apache2.conf 
sudo service apache2 restart
ls
vi apache2.conf 
sudo vim apache2.conf 
sudo service apache2 restart
ls
cd sites-available/
ls
vi 000-default.conf 
sudo vim 000-default.conf 
tail -F /var/log/apache2/access.log
tail -F /var/log/apache2/error.log
vi 000-default.conf 
sudo vim 000-default.conf 
sudo service apache2 restart
tail -F /var/log/apache2/error.log
cd /home/pi/
ls
cd www/
ls -ltr
cd ../
ls
cd camera/
ls
ls -tr
cat index.html 
rm St*
ls
tail -F /var/log/apache2/error.log
cat /etc/group
cat /etc/group | grep apache
cat /etc/group | grep apa
ps -ef | grep ap
cat /etc/group | grep www
sudo adduser pi www-data
cd 
ls
sudo deluser pi www-data
ls
cd www/
ls
vi index.html 
ls
pwd
ls
cd ../camera/
ls
ls -ltr
chmod 644 index.html 
ls -ltr
chmod 660 index.html 
ls -ltr
cd ../
ls
cd www/
ls
vi index.html 
tail -F /var/log/apache2/error.log
sudo a2dismod cgid
sudo service apache2 restart
tail -F /var/log/apache2/error.log
ls
vi n
vi index.html 
vi /etc/apache2/sites-available/000-default.conf 
sudo vim /etc/apache2/sites-available/000-default.conf 
sudo service apache2 restart
tail -F /var/log/apache2/error.log
cd ../camera/
ls -ltr
chmod 666 index.html 
ls -ltr
ls
cd ../
ls
chmod pi:www-data camera/index.html www/index.html cgi-bin/*
chown pi:www-data camera/index.html www/index.html cgi-bin/*
sudo chown pi:www-data camera/index.html www/index.html cgi-bin/*
ls -ltr camera/
sudo reboot ; exit
cd www/
ls
vi index.html 
tail -F /var/log/apache2/error.log
sudo vim /etc/apache2/sites-available/000-default.conf 
sudo service apache2 restart
sudo vim /etc/apache2/sites-available/000-default.conf 
tail -F /var/log/apache2/error.log
ls
sudo vim /etc/apache2/sites-available/000-default.conf 
sudo service apache2 restart
ls
tail -F /var/log/apache2/error.log
tail -F /var/log/apache2/access.log
sudo vim /etc/apache2/sites-available/000-default.conf 
apache2ctl configtest
tail -F /var/log/apache2/access.log
tail -F /var/log/apache2/error.log
apache2ctl configtest
sudo vim /etc/apache2/sites-available/000-default.conf 
apache2ctl configtest
ls -ltr /home/pi/cgi-bin/
sudo service apache2 restart
tail -F /var/log/apache2/error.log
netstat -l
netstat -ln
sudo reboot ; exit
cd /home/
ls
cd pi/
cd www/
ls
cd cctv
ls
cd i
vi index.html 
cd ../../
ls
cd ch
cd cgi-bin/
ls
vi StopCameraService.sh 
ps -ef | grep cgi
ps -ef | grep cctv
tail -F /var/log/apache2/error.log
ls -ltr
sudo chown root:www-data cctvRecord 
ls -ltr
tail -F /var/log/apache2/error.log
ps -ef | grep cctv
sudo reboot ; exit
cd /etc/apache2/
ls
cd sites-available/
ls
sudo vim 000-default.conf 
sudo service apache2 restart
cd /home/pi/cgi-bin/
lsl
ls
vi StartCameraService.sh 
cat StartCameraService.sh 
cat StopCameraService.sh 
sudo vim StopCameraService.sh 
sudo vim StartCameraService.sh 
cat StopCameraService.sh 
cd 
ls
cd www/
ls
cd ../camera/
ls
cat index.html 
cd /etc/apache2/
ls
cd sites-available/
ls
sudo vim 000-default.conf 
tail -F /var/log/apache2/error.log
cd /home/pi/camera/
ls
ls -ltr index.html 
chmod +x index.html 
tail -F /var/log/apache2/error.log
ls
chmod -x index.html 
sudo vim /etc/apache2/sites-available/000-default.conf 
sudo service apache2 restart
tail -F /var/log/apache2/error.log
ls
vim index.html 
cat index.html 
cd /home/ww
cd /home/pi/www/
ls
ln -sf ~/camera/ cctv
ls -ltr
cd cctv
ls
sudo vim /etc/apache2/sites-available/000-default.conf 
sudo service apache2 restart
sudo vim /etc/apache2/sites-available/000-default.conf 
sudo service apache2 restart
cd ..
ls
ls -ltr
cat index.html 
vim index.html 
cd cctv
ls
cat index.html 
vim index.html 
cd /opt/
ls
cd -
ls
ps -ef | grep apache
ls
cd cgi-bin/
ls
cd /etc/apache2/
ls
cd sites-available/
ls
sudo vim 000-default.conf 
a2enmod cgi
sudo a2enmod cgi
sudo service apache2 restart
ps -ef 
tail -F /var/log/apache2/error.log
sudo reboot now
exit
vim cgi-bin/StopCameraService.sh 
cat cgi-bin/StopCameraService.sh 
vim cgi-bin/StopCameraService.sh 
cd cgi-bin/
ls
ls -ltr
vim cgi-bin/StopCameraService.sh 
vim StopCameraService.sh 
ps -ef | grep py
cat St
cat StopCameraService.sh 
tail -F /var/log/apache2/error.log
ls
vim StopCameraService.sh 
mysql -u root -p
clear
sudo visudo 
man visudo 
:
ls
ifconfig 
ping 8.8.8.8
man visudo 
ps -ef | grep apache
sudo visudo 
man sudoers 
sudo visudo 
man sudoers 
sudo visudo 
ls
vi StartCameraService.sh 
vi StopCameraService.sh 
sudo reboot ; exit
sudo visudo 
ps -ef | grep cctv
cat /etc/init.d/cctvRecord 
/etc/init.d/cctvRecord 
tail -F /var/log/apache2/access.log
tail -F /var/log/apache2/error.log
ps -ef | grep python
cd /home/pi/cgi-bin/
ls
cat StopCameraService.sh 
./StopCameraService.sh 
ps -ef |  grep cctv
./StartCameraService.sh 
ps -ef |  grep c
ps -ef |  grep cctv
ls -ltr
vi StartCameraService.sh 
./StartCameraService.sh 
vi StartCameraService.sh 
sudo echo hi
ls
sudo vim St*
c
cat  *
vim StopCameraService.sh 
tail -F /var/log/apache2/error.log
ps -ef | grep cctv
ls
sudo visudo 
tail -F /var/log/apache2/error.log
sudo reboot ; exit
tail -F /var/log/apache2/error.log
cd python/
ls
ls -lt
chown pi:www-data cctvRecord.py 
sudo chown pi:www-data cctvRecord.py 
ls
sudo chown pi:www-data *
ls
ls -ltr
ps -ef | grep cctv
cd /etc/init.d/
ls -ltr
sudo reboot ;exit
tail -F /var/log/apache2/error.log
sudo visudo 
sudo reboot ; exit
sudo visudo 
ls
sudo reboot ;exit
tail -F /var/log/apache2/error.log
sudo visudo 
tail -F /var/log/apache2/error.log
sudo visudo 
whereis start-stop-daemon 
sudo visudo 
sudo reboot ;exit
tail -F /var/log/apache2/error.log
ls
sudo visudo 
sudo reboot ; exit
tail -F /var/log/apache2/error.log
sudo vim /etc/init.d/cctvRecord 
tail -F /var/log/apache2/error.log
sudo visudo 
update-rc.d 
man  update-rc.d 
sudo update-rc.d cctvRecord remove
ls -ltr /etc/init.d/cctvRecord 
ls -ltr /etc/
ls -ltr /etc/rc*/cctv*
cp /etc/init.d/cctvRecord ~
sudo reboot ; exit
ps -ef | grep python
ls
cd cgi-bin/
ls
cp ../cctvRecord .
ls
vi StartCameraService.sh 
vi StopCameraService.sh 
cat StartCameraService.sh 
cat StopCameraService.sh 
ps -ef | grep python
cat StartCameraService.sh 
ps -ef | grep python
vi cctvRecord 
tail -F /var/log/apache2/access.log
tail -F /var/log/apache2/error.log
ls
vi cctvRecord 
mkdir ~/run
mkdir ~/log
vi cctvRecord 
tail -F /var/log/apache2/error.log
cd ,..
cd ..
ls -tlr
vi /etc/apache2/sites-available/000-default.conf 
sudo vim /etc/apache2/sites-available/000-default.conf 
cd /home/
ls
cd pi/
ls
cd www/
ls
ln -sf ../run/ run
ln -sf ../log/ log
ls
vi /etc/apache2/sites-available/000-default.conf 
sudo vim /etc/apache2/sites-available/000-default.conf 
sudo service apache2 restart 
tail -F /var/log/apache2/error.log
sudo vim /etc/apache2/sites-available/000-default.conf 
man apache2
sudo vim /etc/apache2/apache2.conf 
sudo vim /etc/apache2/sites-available/000-default.conf 
cat /home/pi/log/
ls -ltr /home/pi/log/
ls -ltr /var/www/
ls -ltr /var/www
ls -ltr /var
sudo service apache2 restart
tail -F /var/log/apache2/error.log
sudo vim /etc/apache2/sites-available/000-default.conf 
cd /home/pi/
ls
ls www/
cd www/
ls
rm -rf log run/
ls
rm -rf run/
ls
ls -ltr
rm -rf run
ls
ls ../
cp -rf ../run/ ../log/ .
ls
cd ../
ls
rm -rf run/ log/
cd www/
ls
cd cctv
ls
cd ../
ls
cd ../python/
ls
d ../
cd ../cgi-bin/
ls
rm ../cctvRecord 
vim cctvRecord 
sudo service apache2 restart
tail -F /var/log/apache2/error.log
cd ~/www/
ls
ls -ltr
chown -R pi:www-data run/ log/
sudo chown -R pi:www-data run/ log/
tail -F /var/log/apache2/error.log
ls -ltr
chmod -R run/ log/ 644
chmod -R 644 run/ log/ 
ls -ltr
chmod -R 664 run/ log/ 
ls -ltr
tail -F /var/log/apache2/error.log
chmod -R 666 run/ log/ 
tail -F /var/log/apache2/error.log
sudo vim /etc/apache2/envvars 
sudo service apache2 restart
ps -ef | grep apa
tail -F /var/log/apache2/error.log
chmod -R 755 log/ run/
tail -F /var/log/apache2/error.log
ps -ef | grep cctv
ls
ls -ltr
cd ../
ls
ls -ltr
cd camera/
ls
ps -ef 
ps -ef | grep cam
ps -ef | grep cctv
ls
cd ww
ls
cd ~/
ls
cd www/
ls
ls log/
ls run/
mkdir cgi-bin
ls
ls cgi-bin/
rm -rf cgi-bin/
ls
ls ../
cd ..
ls
ls -ltr
sudo vim  /etc/apache2/sites-enabled/000-default.conf 
sudo service apache2 restart
ls
cd www/
ls
vi index.html 
ls -ltr
cat index.html 
vi index.html 
sudo vim  /etc/apache2/sites-enabled/000-default.conf 
sudo service apache2 restart
ls
tail -F /var/log/apache2/error.log
ls
cd ..
chmod -R 755 camera/
sudo chmod 755 camera/index.html 
tail -F /var/log/apache2/error.log
apache2 -v
pwd
cd www/
s
ls
mkdir js css
ls
pwd
vi index.html 
vim index.html 
ls
cd js/
ls
cd ..
vim index.html 
ls ..
ls 
ls log/
rm -rf log/ run/
cd ../
ls
mkdir log run
cd cgi-bin/
ls
cat StartCameraService.sh 
ls
cat cctvRecord 
vim cctvRecord 
sudo vim /etc/apache2/sites-enabled/000-default.conf 
ls
vi cctvRecord 
sudo service apache2 restart
tail -F /var/log/apache2/error.log
ps -ef | grep python
ls
ps -ef | grep python
vi StartCameraService.sh 
vi cctvRecord 
man start-stop-daemon 
vi cctvRecord 
./cctvRecord 
./cctvRecord start
ps -ef | grep cctv
./cctvRecord start
echo $>
echo $?
./cctvRecord start
echo $?
ps -ef | grep cctv
./cctvRecord stop
ps -ef | grep cctv
killall cctvRecord.py
ps -ef | grep cctv
./cctvRecord start
ps -ef | grep cctv
./cctvRecord stop
ps -ef | grep cct
killall cctvRecord.py
vi cctvRecord 
./cctvRecord start
ps -ef | grep python
cat ~/run/cctvRecord.py.pid 
cat ~/log/cctvRecord.py.log 
ls
cat StartCameraService.sh 
./cctvRecord start
ls
ps -ef | grep py
cd ../run/
ls
cat cctvRecord.py.pid 
kill 3487 3523
cat cctvRecord.py.pid 
rm cctvRecord.py.pid 
cd ../log/
ls
rm cctvRecord.py.log 
ls
cd ..
l
sls
ls
cd camera/
ls
cd ../
cd www/
ls
cd i
vim index.html 
ls
cd ~/cgi-bin/
ls
vim cctvRecord 
ls ../run/
vim cctvRecord 
./cctvRecord start
vim cctvRecord 
./cctvRecord start
vim cctvRecord 
./cctvRecord start
./cctvRecord stop
./cctvRecord start
./cctvRecord restart
./cctvRecord start
./cctvRecord restart
./cctvRecord start
./cctvRecord stop
./cctvRecord start
ps -ef | grep cctv
cd ../images/
cd 
cd www/
ls
vi index.html 
ls
vi index.html 
ps -ef | grep cctv
exit
ls
cd www/
sl
ls
ls -ltr
rm !
ls
vim index.html 
ls
ls cctv
cp cctv/index.html camera.html
ls
chmod -X camera.html 
ls
cat camera.html 
vim index.html 
ls
cat index.html 
vim index.html 
cat index.html 
vim camera.html 
ls
geany
sudo apt-get install geany
exit
ls
cd www/
ls
geany index.html 
exit
ls
cd www/
ls
geany index.html 
export DISPLAY='IP:0.0'
geany index.html 
exit
export DISPLAY='192.168.0.197:0.0'
geany index.html 
ls
cd www/
ls
sudo apt-get remove geany
ls
vim index.html 
vim camera.html 
cat index.html 
cat camera.html 
cat index.html 
ls
cd js/
ls
touch camera.js index.js camera.css index.css
ls
cd ../
ls
vim index.html 
vim camera.html 
printenv 
ls
cd cctv
ls
cat /etc/apache2/sites-enabled/000-default.conf 
sudo vim /etc/apache2/sites-enabled/000-default.conf 
ls
chmod -x video_2016_09_24_23_52_53_Sat_1800secs.h264 
ls -ltr
ls
rm index.html 
ls -ltr
ls
cd ../
ls
cd ../
ls
cd cgi-bin/
ls
touch listVideos.sh
mv StartCameraService.sh startCamera.sh 
mv StopCameraService.sh stopCamera.sh
ls
chmod +x listVideos.sh 
ls
cd ../www/
ls
cat index.html 
ls
vim index.html 
vim camera.html 
cat index.html 
cat index.html  | grep Camera
cat camera.html  | grep Camera
s
cd ../cgi-bin/
ls
vim listVideos.sh 
./listVideos.sh 
s
ls -ltr
sudo chown pi:pi st*
ls -ltr
vim listVideos.sh 
ls .
tail -F /var/log/apache2/error.log
ls
cat st
cat startCamera.sh 
gi-bin $ 
pi@kvpi3:~/cgi-bin $ cat startCamera.sh 
#!/bin/sh
echo "Content-typeecho "Content-type: text/html\n\n"echo "Content-type: text/html\n\n"

"
echo "Content-type: text/html\n\n"
vi listVideos.sh 
tail -F /var/log/apache2/error.log
vi listVideos.sh 
cat /etc/apache2/sites-enabled/000-default.conf 
ls ../
vi listVideos.sh 
ls
cd ../www/
ls
cd js/
ls
vim camera.js 
cd ../
ls
vi camera.html 
vi index.html 
vi camera.html 
vi index.html 
vi camera.html 
ls
sudo vim /etc/apache2/sites-enabled/000-default.conf 
sudo service apache2 restart
ls
cd css/
ls
mv ../js/*.css .
ls
vim /etc/apache2/sites-enabled/000-default.conf 
sudo vim /etc/apache2/sites-enabled/000-default.conf 
sudo service apache2 restart
cd ../js/cam
cd ../js/c
cd ../js/
ls
vim camera.js 
ls
vim camera.js 
ls
cat jquery-3.1.1.slim.min.js | grep ajax
ls
exit
cd www/
ls
cat index.html 
cat camera.html 
cd js/
ls
vim camera.js 
ls -r /home/pi/camera/
ls -r /home/pi/camera/ | head -1
ls -r /home/pi/camera/ | tail -1
ls -tlr /home/pi/camera/ | tail -1
ls -tlrh /home/pi/camera/ | tail -1
vim camera.js 
ls -lr /home/pi/camera/
ls -lrh /home/pi/camera/
vim camera.js 
date
ls
vim camera.js 
vim ../camera.html 
ls
vim camera.js 
vim ../camera.html 
vim camera.js 
exit
cd www/
ls
ls css/font-awesome.min.css 
css/font-awesome.min.css
vim camera.html 
vim index.html 
cd js/
ls
vim camera.js 
vim ../css/font-awesome.min.css 
vim ../camera.html 
vim ../index.html 
vim camera.js 
ls
cd ../
ls
mkdir fonts
ls
exit
ls
cd www/
ls
d js/
ls
cd js/
ls
vim camera.js 
ls
cd www/
ls
cd js/
ls
vim camera.js 
ps -ef | grep apache
sudo service apache2 start
ps -ef | grep apache
sudo service apache2 stop
sudo service apache2 start
ps -ef | grep apache
ls
vim camera.js 
cd ../
ls
vim index.html 
vim camera.html 
vim index.html 
cd css/
s
lls
ls
vim camera.css 
ls
cp camera.css index.css 
cd ../
ls
vi index.html 
vim camera.html 
vim css/index.css 
cp css/index.css css/camera.css 
cat camera.html 
vim camera.html 
vim index.html 
cd css/
ls
vim index.css 
cp index.css camera.css 
vim index.css 
cp index.css camera.css 
vim camera.css 
cd ./
vim camera.css 
cd ../
vim camera.html 
ls
ls -ltr
ps -ef | grep py
clear
ls
cd js/
ls
cd ../
ls
ls hard_disk/
rm -rf hard_disk/
ls camera/
ls cgi-bin/
ls images/
rm -rf images/
ls log/
ls private/
ls python/
ls run/
ls www/
ls
mkdir boot
cd boot/
ls
touch init.sh
chmod +x init.sh 
ls
vi init.sh 
vi ~/.bashrc 
ls
vim ~/.bashrc 
ls
mv init.sh pi_init.sh
cat pi_init.sh 
./pi_init.sh 
vi pi_init.sh 
./pi_init.sh 
vi /var/log/messages
sudo reboot ; exit
date
cat /var/log/messages | grep Starting
date
uptime
sudo reboot ;exit
ps -ef | grep apache
sudo reboot ;exit 
clear
cd boot/
ls
cd ../
ls
cd www/
ls
ls -ltr
ln -sf ../boot/cameraDefaultEnabled cameraDefaultEnabled
ls -ltr
ls
cd ../cgi-bin/
ls
cp deleteVideo.sh cameraDefaultEnable.sh
vim cameraDefaultEnable.sh 
ls
vim cameraDefaultEnable.sh 
cd ../
cd www/js/
ls
cd ../
ls
cd js/
ls
vim camera.js 
ps -fe | grep apa
ls
vim camera.js 
ls ../
cd boot/
ls
cd ../
cd bin/
ls
sudo ./piLaunch start
cat ~/
cat ~/boot/pi_init.sh 
touch /home/pi/boot/cameraDefaultEnabled
sudo ./piLaunch start
ps -ef | grep python
/home/pi/cgi-bin/stopCamera.sh 
ls
sudo mv piLaunch /etc/init.d/
cd /etc/init.d/
ls
sudo update-rc.d piLaunch defaults
ls -ltr piLaunch 
ls -ltra *
ls -ltra /etc/c
ls -ltra /etc/rc0.d/
ps -ef | grep python
cd /
ls
cd ~
ls
cd bin/
ls
cd ./
cd ..
/ls
cd boot/
ls
cat /var/log/messages
date
sudo reboot ; exit
cd /opt/
ls
cd 
ls
cd boot/
ls
cat pi_init.sh 
vim pi_init.sh 
ls
ls -ltr ../www/
;s
ls
vim pi_init.sh 
ls
ls ../
ls ../python/
ls ../python/cctvRecord.py 
cat ../python/cctvRecord.py 
ls
cd ..
ls
ls boot/
cd cgi-bin/
ls
cat cctvRecord 
ls
cat cameraDefaultEnable.sh 
ls
cat startCamera.sh 
mv cctvRecord ../boot/
ls
vim startCamera.sh 
vim stopCamera.sh 
cat startCamera.sh stopCamera.sh 
cd ../boot/
ls
cat cctvRecord 
ls
cat pi_init.sh 
vim pi_init.sh 
cat pi_init.sh 
ps -ef | grep pyth
./pi_init.sh 
tail -F /var/log/messages
ls
cd ../
ls
mkdir bin
cd boot/
ls
mv cctvRecord ../bin/
vim pi_init.sh 
cd ../cgi-bin/
ls
vim startCamera.sh 
vim stopCamera.sh 
cat start
cat startCamera.sh 
cat stopCamera.sh 
ls
cd ../
cd boot/
ls
cat pi_init.sh 
./pi_init.sh 
tail -F /var/log/messages
cat pi_init.sh 
touch /home/pi/boot/cameraDefaultEnabled
./pi_init.sh 
tail -F /var/log/messages
tail -10 /var/log/messages
ps -ef | grep py
/home/pi/cgi-bin/stopCamera.sh 
/home/pi/cgi-bin/startCamera.sh 
/home/pi/cgi-bin/stopCamera.sh 
ls
rm cameraDefaultEnabled 
ls
cd ../
ls
cd bin/
ls
cp cctvRecord piLaunch
vim piLaunch 
cat piLaunch 
ps -ef | grep py
ps -ef | grep pyt
ls
cat piLaunch 
./piLaunch 
./piLaunch stop
vim piLaunch 
./piLaunch stop
./piLaunch restart
./piLaunch force-reloa
./piLaunch force-reload
./piLaunch start
sudo ./piLaunch start
cd www/
ls
cd js/
ls
vim camera.js 
sudo reboot ; exit
ls
exit
