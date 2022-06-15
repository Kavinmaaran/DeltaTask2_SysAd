FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
WORKDIR /var/omega
RUN apt update
RUN apt -y upgrade
RUN apt install -y sudo acl wget
RUN apt install -y apache2
RUN apt install -y php libapache2-mod-php php-mysql
RUN apt install -y nano git
RUN apt install -y bc ufw cron
RUN rm -rf /var/www/html/index.html
COPY ./data/ .
RUN chmod +x /var/omega/main.sh
# #VOLUME ["/var/www/html"]
# RUN sudo useradd -m -d /home/CEO CEO
# # cd /home/CEO
# RUN git clone https://github.com/kavin033/DeltaTask1_SysAd.git
# RUN cp -r /var/omega/DeltaTask1_SysAd /home/CEO/.
# RUN mv /home/CEO/DeltaTask1_SysAd/init.sh /home/CEO
# RUN chmod +x /home/CEO/init.sh
# RUN /home/CEO/init.sh
# RUN chown CEO:CEO /home/CEO/src
# RUN chown CEO:CEO /home/CEO/*.sh
# # echo "ServerName localhost" >> /usr/local/etc/apache2/apache2.conf
# # sudo systemctl restart apache2
# RUN /home/CEO/genUser.sh
# RUN /home/CEO/permit.sh
# RUN /home/CEO/aliases.sh
# RUN sed -i "s/short_open_tag = Off/short_open_tag = On/" /etc/php/8.1/apache2/php.ini
# RUN cp /home/CEO/src/*usr.txt /var/www/html/
# RUN chmod 777 /var/www/html/*usr.txt
CMD /var/omega/main.sh