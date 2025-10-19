
Install docker:

sudo apt-get update
sudo apt-get upgrade


sudo apt-get install ufw uidmap vim

curl -fsSL https://get.docker.com | sh
dockerd-rootless-setuptool.sh install

sudo ufw allow 443/tcp


sudo vim /etc/sysctl.conf
add : net.ipv4.ip_unprivileged_port_start=443
sudo sysctl --system