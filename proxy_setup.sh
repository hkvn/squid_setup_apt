#!/usr/bin/env bash


# install repo
echo "=========== Install Repo ================="
apt update && apt upgrade -y

echo "==========================================="

# install depend
echo "=========== Install Depend ================="

apt install squid -y

echo "==========================================="
PASSWORD=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
printf "proxy:$(openssl passwd -apr1 $PASSWORD)\n" > squid.auth
echo $PASSWORD
cp squid.conf /etc/squid/
cp squid.auth /etc/squid/

# build squid

mkdir /var/spool/squid3


echo "* - nofile 500000" >> /etc/security/limits.conf

echo "=========== Init =================\n"
echo "proxy"
echo $PASSWORD

