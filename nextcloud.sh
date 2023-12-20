#!/bin/bash

read -p "Enter desired Nextcloud admin username (default 'admin'): " admin_user>
admin_username=${admin_username:-admin}

read -sp "Enter desired Nextcloud admin password (default 'insecure'): " admin_>

admin_password=${admin_password:-insecure}

export ADMIN_USERNAME=$admin_username
export ADMIN_PASSWORD=$admin_password

mkdir ./deployment
touch ./deployment/redis-session.ini

# Ask for ip4 value or hostname
read -p "Enter IP address or hostname (leave blank to auto-detect - if you're running on wsl you will need to manually enter your IP): " input_ip4
if [ -z "$input_ip4" ]; then
    export ip4=$(/sbin/ip -o -4 addr list eth0 | awk '{print $4}' | cut -d/ -f1)
else
    export ip4=$input_ip4
fi

# Run docker-compose detached, remove -d flag to see docker-compose output
docker-compose up -d
