#! /bin/bash

file="/home/CEO"

sudo useradd -m -d /home/CEO CEO
git clone https://github.com/kavin033/DeltaTask1_SysAd.git
cp -r /var/omega/DeltaTask1_SysAd /home/CEO/.
mv /home/CEO/DeltaTask1_SysAd/init.sh /home/CEO
chmod +x /home/CEO/init.sh
/home/CEO/init.sh
file="/home/CEO"
mv /home/CEO/DeltaTask1_SysAd/* /home/CEO/
mv /home/CEO/'NormalUser Mode'/* /home/CEO/
mv /home/CEO/'SuperUser Mode'/* /home/CEO/
rm -rf /home/CEO/'NormalUser Mode'   /home/CEO/README.md  /home/CEO/'SuperUser Mode' /home/CEO/DeltaTask1_SysAd
chmod 770 ${file}/allotInterest.sh ${file}/genSummary.sh ${file}/updateBranch.sh ${file}/src/summary.txt ${file}/src/mean.txt ${file}/src/meanusr.txt ${file}/src/mode.txt ${file}/src/modeusr.txt ${file}/src/median.txt ${file}/src/medianusr.txt
chmod 700 ${file}/aliases.sh ${file}/genUser.sh ${file}/init.sh ${file}/permit.sh 
chmod 777 ${file}/makeTransaction.sh
chown CEO:CEO /home/CEO/src
chown CEO:CEO /home/CEO/*.sh
/home/CEO/genUser.sh
/home/CEO/permit.sh
/home/CEO/aliases.sh
sed -i "s/short_open_tag = Off/short_open_tag = On/" /etc/php/8.1/apache2/php.ini
cp /home/CEO/src/*usr.txt /var/www/html/
chmod 777 /var/www/html/*usr.txt
/usr/sbin/apache2ctl -D FOREGROUND
