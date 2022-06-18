# DeltaTask2_SysAd



``docker build -t maaran/omega:dev .``  
``docker run -d --name omega -p 8080:80 maaran/omega:dev``  
``docker exec -it omega /bin/bash``   
``docker rm -f omega``  


### Commands to be executed for docker-compose

``docker-compose build``   
``docker-compose up`` 

to stop containers: ``docker-compose down``

adminer : localhost:8080
server : localhost:80

sign in as root in adminer and import the database.  

import file name: "migrations.sql"  

docker exec -it  deltatask2_sysad-db-1 bash 

``mysql -u root -pexample``   
``CREATE USER 'omega'@'%' IDENTIFIED BY 'omega';``      
``GRANT SELECT ON omega.* TO 'omega'@'%';``  
``exit``  

to sign in adminer for mysql:
for root   
username:root     
password:example

for bank manager(user with only read permissions)  

username:omega   
password:omega  

