# single-server-nextcloud-deploy
Quick and dirty Nextcloud/Postgres/Redis deploy.

Requires docker-compose

Make nextcloud.sh runnable with: 
chmod 700 nextcloud.sh

Run script with:
./nextcloud.sh

You will be prompted to set your nextcloud admin username and password. 
Default values are:

username:admin
password:insecure

Script will pull your ipv4 ip address off of your eth0 connection and add it to NEXTCLOUD_TRUSTED_DOMAINS along with localhost. 
Nextcloud service will bereachable on port 80.
Postgres and Redis will be installed and available on the docker_nextcloud_network bridge.
