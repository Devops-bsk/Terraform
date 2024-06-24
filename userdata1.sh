#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl httpd start
sudo systemctl httpd enable
sudo yum install git -y
echo "<h1> Hello , this is the userdata file from $(hostname -f)" > /var/www/html/index.html