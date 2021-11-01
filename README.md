# squid_setup

****Clone source code**

_cd /opt_

_sudo apt update -y && sudo apt install git -y_

_git clone https://github.com/hkvn/squid_setup_apt.git_

_cd squid_setup_apt_

**Install**

_sudo bash proxy_setup.sh_
**Start Squid**
_/etc/init.d/squid restart_

**Test IP**

_curl -x http://user:password@127.0.0.1:10000 https://ident.me_

**Add User**

_printf "user:$(openssl passwd -apr1 PASSWORD)\n" >> /etc/squid/squid.auth_
