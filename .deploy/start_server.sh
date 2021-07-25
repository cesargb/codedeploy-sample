#!/bin/bash

systemctl start mariadb.service
systemctl start nginx.service
systemctl start php-fpm.service
