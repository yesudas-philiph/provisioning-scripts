-----------
#!/bin/bash


echo "ClientAliveInterval 60" >> /etc/ssh/sshd_config
echo "LANG=en_US.utf-8" >> /etc/environment
echo "LC_ALL=en_US.utf-8" >> /etc/environment

yum install mariadb-server -y
systemctl start mariadb
systemctl enable mariadb

mysql_secure_installation <<EOF

y
secret
secret
y
y
y
y
EOF

mysql -u root -psecret -e "CREATE DATABASE wp"
mysql -u root -psecret -e "CREATE USER 'wp'@'%' identified by 'wp'"
mysql -u root -psecret -e "grant all privileges on wp.* to 'wp'@'%';"
