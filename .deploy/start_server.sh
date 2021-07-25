#!/bin/bash

systemctl start mariadb.service
systemctl stop nginx.service
systemctl start nginx.service
systemctl start php-fpm.service
