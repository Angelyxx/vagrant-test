#!/bin/bash

#update cento with patches
yum update -y --exclude=kernel

#tools
yum install -y nano git unzip screen

#apache
yum install -y httpd httpd-devel httpd-tools
chkconfig --add httpd
chkconfig httpd on
service httpd stop


rm -rf /var/www/html

#Symoblic link (shared folder)
ln -s /vagrant /var/www/html

service httpd start

#PHP
yum install -y php-cli php-common php-devel php-mysql

#MYSQL
yum install -y mysql mysql-server mysql-devel
chkconfig --add mysqld
chkconfig mysqld on

service mysqld start

mysql -u root -e "SHOW DATABASES";

#download starter content
service httpd restart

