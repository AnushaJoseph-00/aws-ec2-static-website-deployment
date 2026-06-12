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

Launched an EC2 instance with Ubuntu 24.04 LTS
Connected to the instance via SSH:

