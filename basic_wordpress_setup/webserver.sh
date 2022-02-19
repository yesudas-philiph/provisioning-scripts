#!/bin/bash


echo "ClientAliveInterval 60" >> /etc/ssh/sshd_config
echo "LANG=en_US.utf-8" >> /etc/environment
echo "LC_ALL=en_US.utf-8" >> /etc/environment


yum install httpd -y
systemctl start httpd
systemctl enable httpd
amazon-linux-extras install php7.4 -y
systemctl start php-fpm
systemctl enable php-fpm


wget https://wordpress.org/latest.tar.gz -P /home/ec2-user/
tar -xzf /home/ec2-user/latest.tar.gz -C /home/ec2-user/
cp -r /home/ec2-user/wordpress/* /var/www/html/
mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php 
rm -rf /home/ec2-user/wordpress
rm -rf /home/ec2-user/latest.tar.gz
sed -i 's/database_name_here/wp/g' /var/www/html/wp-config.php
sed -i 's/username_here/wp/g' /var/www/html/wp-config.php
sed -i 's/password_here/wp/g' /var/www/html/wp-config.php
sed -i 's/localhost/db.internal/g' /var/www/html/wp-config.php

chown apache:apache /var/www/html/ -R
systemctl restart httpd
systemctl restart php-fpm
