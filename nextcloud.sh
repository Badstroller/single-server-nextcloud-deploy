#!/bin/bash

read -p "Enter desired Nextcloud admin username (default 'admin'): " admin_user>
admin_username=${admin_username:-admin}

read -sp "Enter desired Nextcloud admin password (default 'insecure'): " admin_>

admin_password=${admin_password:-insecure}

export ADMIN_USERNAME=$admin_username
export ADMIN_PASSWORD=$admin_password

mkdir ./deployment
touch ./deployment/redis-session.ini

export ip4=$(/sbin/ip -o -4 addr list eth0 | awk '{print $4}' | cut -d/ -f1)

# Run docker-compose
docker-compose up -d
