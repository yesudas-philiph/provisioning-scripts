##====================================
###docker 
##====================================

#!/bin/bash

echo "ClientAliveInterval 60" >> /etc/ssh/sshd_config
echo "LANG=en_US.utf-8" >> /etc/environment
echo "LC_ALL=en_US.utf-8" >> /etc/environment


amazon-linux-extras install docker -y
systemctl start docker
systemctl enable docker
