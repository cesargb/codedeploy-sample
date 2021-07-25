#!/bin/bash

systemctl start mariadb.service
systemctl stop nginx.service
systemctl start nginx.service
systemctl stop php-fpm.service
systemctl start php-fpm.service
