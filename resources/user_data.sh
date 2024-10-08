#!/bin/bash
# install httpd 
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo '<h1 style="text-align: center; color: blue;">It is All Set, Asmae!</h1>' > /var/www/html/index.html
