#!/bin/bash

sudo dnf install -y httpd

sudo systemctl enable httpd
sudo systemctl start httpd

echo "AWS DRS Recovery Server - Application Running Successfully" | sudo tee /var/www/html/index.html

echo "Apache installation completed."