apt update
apt install debian-goodies --install-recommends -f -y
apt purge popularity-contest -y
apt update
apt upgrade -y
