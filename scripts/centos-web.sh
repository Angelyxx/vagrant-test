#!/bin/bash

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

#download starter content
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/Angelyxx/vagrant-test/refs/heads/main/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/Angelyxx/vagrant-test/refs/heads/main/files/info.php

