# squid_setup

Clone source code

cd /opt

sudo apt update -y && sudo apt install git -y

git clone https://github.com/hkvn/squid_setup_apt.git

cd squid_setup

Install

sudo bash proxy_setup.sh

Start Squid

/etc/init.d/squid restart

Test IP

curl -x http://user:password@127.0.0.1:10000 https://ident.me

Add User

printf "user:$(openssl passwd -apr1 PASSWORD)\n" >> /etc/squid/squid.auth
