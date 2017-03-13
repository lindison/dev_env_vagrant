# Define the Vagrant environment for Ansible 101
#
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  #Bypass issue with certs in 1.8.5
#  config.ssh.username = 'vagrant'
#  config.ssh.password = 'vagrant'
#  config.ssh.insert_key = 'false'

  # Create Swarm Servers
  (1..1).each do |i|
    config.vm.define "lb0#{i}" do |lb|
        lb.vm.box = "ubuntu/xenial64"
        lb.vm.hostname = "lb0#{i}"
        lb.vm.network "private_network", ip: "192.168.12.10#{i}"
        lb.vm.provider "virtualbox" do |vb|
          vb.memory = "384"
        end
        lb.vm.provision :shell, path: "scripts/lb_install.sh"
        lb.vm.provision :shell, path: "scripts/dns_config.sh"
        lb.vm.provision :shell, path: "scripts/bash_config.sh"
    end
  end

  (1..1).each do |i|
    config.vm.define "app0#{i}" do |app|
        app.vm.box = "ubuntu/xenial64"
        app.vm.hostname = "app0#{i}"
        app.vm.network "private_network", ip: "192.168.12.11#{i}"
        app.vm.provider "virtualbox" do |vb|
          vb.memory = "384"
        end
        app.vm.provision :shell, path: "scripts/app_install.sh"
        app.vm.provision :shell, path: "scripts/dns_config.sh"
        app.vm.provision :shell, path: "scripts/bash_config.sh"
    end
  end

  (1..1).each do |i|
    config.vm.define "db0#{i}" do |db|
        db.vm.box = "ubuntu/xenial64"
        db.vm.hostname = "db0#{i}"
        db.vm.network "private_network", ip: "192.168.12.12#{i}"
        db.vm.provider "virtualbox" do |vb|
          vb.memory = "768"
        end
        db.vm.provision :shell, path: "scripts/db_install.sh"
        db.vm.provision :shell, path: "scripts/dns_config.sh"
        db.vm.provision :shell, path: "scripts/bash_config.sh"
    end
  end

  (1..1).each do |i|
    config.vm.define "redis0#{i}" do |redis|
        redis.vm.box = "ubuntu/xenial64"
        redis.vm.hostname = "redis0#{i}"
        redis.vm.network "private_network", ip: "192.168.12.13#{i}"
        redis.vm.provider "virtualbox" do |vb|
          vb.memory = "768"
        end
        redis.vm.provision :shell, path: "scripts/redis_install.sh"
        redis.vm.provision :shell, path: "scripts/bash_config.sh"
        redis.vm.provision :shell, path: "scripts/dns_config.sh"
    end
  end

# Create the Ansible Command Server
  config.vm.define :acs do |acs|
    acs.vm.box = "ubuntu/xenial64"
    acs.vm.hostname = "acs"
    acs.vm.network "private_network", ip: "192.168.12.100"
    acs.vm.provider "virtualbox" do |vb|
      vb.memory = "384"
    end
    acs.vm.provision :shell, path: "scripts/ansible_install.sh"
    acs.vm.provision :shell, path: "scripts/dns_config.sh"
    acs.vm.provision :shell, path: "scripts/bash_config.sh"
  end

end
