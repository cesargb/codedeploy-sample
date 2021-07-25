#!/bin/bash

sudo amazon-linux-extras install php8.0 nginx1 -y
sudo yum install -y mariadb-server php-fpm php-mbstring php-dom
