#!/usr/bin/env bash

# install ansible (http://docs.ansible.com/intro_installation.html)
apt-get -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get -y install ansible

# copy examples into /home/vagrant (from inside the mgmt node)
cp -a /vagrant/* /home/vagrant
chown -R vagrant:vagrant /home/vagrant
mv /home/vagrant/id_rsa* /home/vagrant/.ssh
chown vagrant:vagrant /home/vagrant/.ssh
rm -rf /home/vagrant/node_exporter
ln -s /vagrant/node_exporter /home/vagrant

# configure ansible default hosts file
cat >> /etc/ansible/hosts <<EOL

[lb]
lb01

[app]
app01
app02

[db]
db01
db02

[ubuntu]
lb01
app01
app02
db01
db02
EOL

