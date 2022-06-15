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
CMD /var/omega/main.sh
