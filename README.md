# single-server-nextcloud-deploy
Quick and dirty Nextcloud/Postgres/Redis docker deploy.

Requires docker-compose

Make nextcloud.sh runnable with: 
chmod 700 nextcloud.sh

Run script with:
./nextcloud.sh

You will be prompted to set your nextcloud admin username and password. 
Default values are:

username:admin

password:insecure

If you don't enter an IP address or hostname the script will pull your ipv4 ip address off of your eth0 connection and add it to NEXTCLOUD_TRUSTED_DOMAINS along with localhost. If you wish to use your wifi connection change eth0 to wlan0 (or other desired network adapter) in the nextcloud.sh script. Auto-dectect of ip address will not work when running in Windows Subsystem for Linux (WSL/WSL2)


Nextcloud service will be reachable on port 80.


Postgres and Redis will be installed and available on the docker_nextcloud_network bridge.
