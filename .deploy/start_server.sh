#!/bin/bash

isExistApp=pgrep mysql
if [[ -n $isExistApp ]]; then
    systemctl stop mariadb.service
fi
systemctl start mariadb.service

isExistApp=pgrep nginx
if [[ -n $isExistApp ]]; then
    systemctl stop nginx.service
fi
systemctl start nginx.service

isExistApp=pgrep php-fpm
if [[ -n $isExistApp ]]; then
    systemctl stop php-fpm.service
fi
systemctl start php-fpm.service
