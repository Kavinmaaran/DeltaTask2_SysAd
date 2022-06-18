FROM mysql:latest
ARG DEBIAN_FRONTEND=noninteractive
WORKDIR /var/database
RUN apt update
RUN apt -y upgrade
RUN apt install -y sudo net-tools
RUN apt install -y apache2
RUN apt install -y php libapache2-mod-php php-mysql
RUN apt install -y nano git
# RUN mysql_config_editor set --login-path=local --host=localhost --user=root --password
# RUN mysql -u root -pexample
# RUN mysql --login-path=local -e "CREATE USER 'omega'@'%' IDENTIFIED BY 'omega';"
# RUN mysql --login-path=local -e "GRANT SELECT ON omega.* TO 'omega'@'%';"
# RUN systemctl restart zabbix-agent
COPY ./data/ .
# RUN mysql -h "db" -u "root" "--password="$MYSQL_ROOT_PASSWORD" "omega" < "/var/database/sqlcommands.sql"
# RUN exit
CMD ["/usr/bin/mysqld_safe"]