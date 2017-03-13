# configure /etc/hosts file

cat >> /etc/hosts <<EOL

192.168.11.101 lb01
192.168.11.111 app01
192.168.11.112 app02
192.168.11.121 db01
192.168.11.122 db02
192.168.11.100 acs

EOL
