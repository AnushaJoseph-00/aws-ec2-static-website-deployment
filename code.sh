#!/bin/bash

# AWS EC2 Static Website Deployment Script
# Deploys the "Barista Cafe" Tooplate template using Apache2 on Ubuntu 24.04 LTS

# Switch to root
sudo -i

# Update package lists and install Apache2
apt update && apt install apache2 -y

# Confirm Apache2 is installed and running
systemctl status apache2

# Download the Barista Cafe template
wget https://www.tooplate.com/zip-templates/2137_barista_cafe.zip

# Install unzip and extract the template
apt install unzip
unzip 2137_barista_cafe.zip

# Copy website files into Apache's web root
cp -r 2137_barista_cafe/* /var/www/html/

# Verify files are in place
ls /var/www/html

# Confirm Apache is listening on port 80
ss -tunlp | grep apache2

