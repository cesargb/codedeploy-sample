#!/bin/bash

sudo amazon-linux-extras install php8.0 nginx1 -y
sudo yum install -y jq mariadb-server php-fpm php-mbstring php-dom

sudo curl -sS https://getcomposer.org/installer | sudo php
sudo mv composer.phar /usr/local/bin/composer
