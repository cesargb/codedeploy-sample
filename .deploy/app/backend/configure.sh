#!/bin/bash

PATH_DEPLOY="/opt/codedeploy-agent/deployment-root/${DEPLOYMENT_GROUP_ID}/${DEPLOYMENT_ID}/deployment-archive/"
PATH_ROOT="/var/www/html/backend"
REGION=$(curl --silent http://169.254.169.254/latest/dynamic/instance-identity/document | jq -r .region)

cd $PATH_ROOT

# Composer
sudo composer install

# Env
APP_KEY=$(aws ssm get-parameters --region ${REGION} --names app.backend.key --with-decryption --query Parameters[0].Value)
cat "${PATH_DEPLOY}/.deploy/app/backend/.env" | sed -e "s/APP_KEY=/APP_KEY=${APP_KEY}/" > "${PATH_ROOT}/.env"
