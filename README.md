# AWS EC2 Static Website Deployment (Apache2)

## Overview

This project demonstrates deploying a static website on an AWS EC2 instance running Ubuntu, using Apache2 as the web server. The entire deployment was carried out via SSH, including downloading, extracting, and configuring the website files directly on the server.

## Project Description

A responsive cafe website template ("Barista Cafe" from Tooplate) was deployed on an AWS EC2 (Ubuntu) instance. The workflow follows:

- Launching an EC2 instance (Ubuntu 24.04 LTS)
- Connecting to the instance via SSH
- Installing and configuring Apache2 as the web server
- Downloading the website template zip file directly onto the server using `wget`
- Extracting the files using `unzip`
- Moving the extracted files to Apache's web root directory (`/var/www/html`)
- Configuring the EC2 security group to allow inbound rules HTTP traffic (port 80)
- Verifying the site was live and Apache was listening correctly

## Tech Stack

- Cloud Platform: AWS (EC2)
- Operating System: Ubuntu 24.04 LTS
- Web Server: Apache2
- Website Source: Tooplate "Barista Cafe" template (HTML, CSS, JavaScript)
- Access Method: SSH

## Steps Followed

1. Launched an EC2 instance with Ubuntu 24.04 in Git Bash
 
2. Connected to the instance via SSH:
   - ssh -i key-pair.pem ubuntu@<ec2-public-ip>

3. Switched to root and installed Apache2:
   sudo -i
   - apt update && apt install apache2 -y

4. Confirmed Apache2 was installed and running:
   - systemctl status apache2

5. Downloaded the Barista Cafe template directly onto the server:
   - wget https://www.tooplate.com/zip-templates/2137_barista_cafe.zip
  
6. Installed unzip and extracted the template:
   - apt install unzip
   - unzip 2137_barista_cafe.zip

7. Copied the extracted files into Apache's web root:
   - cp -r 2137_barista_cafe/* /var/www/html/
  
8. Verified the files were in place:
   - ls /var/www/html
     
9. Updated the EC2 security group to allow inbound traffic on port 80 (HTTP)

10. Verified Apache was listening on port 80:
   - ss -tunlp | grep apache2

11. Visited the EC2 instance's public IP in a browser to confirm the site was live

Key Takeaways

Gained hands-on experience provisioning and managing an AWS EC2 instance
Practised the full Linux command-line workflow for downloading, extracting, and deploying files on a remote server
Configured Apache2 to serve static content
Learned how AWS security groups control inbound network rules
Understood the difference between static and dynamic websites, and why a static site requires no application server or database

What This Mirrors in the Real World
This workflow reflects how many organisations host simple marketing sites, landing pages, or documentation portals before introducing more complex infrastructure (load balancers, containers, auto-scaling). It also represents the manual deployment process that typically precedes automation in a CI/CD pipeline.
