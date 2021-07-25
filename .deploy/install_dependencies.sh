#!/bin/bash

sudo amazon-linux-extras install php8.0
sudo yum install -y httpd mariadb-server php
sudo curl -sS https://getcomposer.org/installer | sudo php
sudo mv composer.phar /usr/local/bin/composer
sudo ln -s /usr/local/bin/composer /usr/bin/composer
