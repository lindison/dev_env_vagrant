# Quick project for a sandbox environment. 

The environment uses Vagrant and Virtualbox.  
The system will deploy any number of machines and configure them to run docker, ansible, apache tools, redis, nginx, etc. Modify the Vagrant file to fit your needs, add additional scripts to scripts and modify the `vm.provision :shell, path:` section of the Vagrantfile to use the new script.    

NOTE: Also ensure that you place an id_rsa and an id_rsa.pub key in the same level as the Vagrantfile. This will get Ansible configured. 

This uses Ubuntu 16.04 and the IP space of `192.168.12.xx`  

The directory structure is as such. Node Exporter directory is used to deploy node_exporter to the defined machines in the ansible host list. Prom demo is to run a quick demo of Prometheus and Grafana. The enclosed dashboard json files will get a dashboard up and running quite quickly!  

```bash
├── bashrc
├── LICENSE
├── node_exporter
│   ├── deploy_cadvisor.sh
│   ├── docker_install.yml
│   ├── node_exporter.yml
│   ├── service.conf
│   └── tools.yml
├── prom_demo
│   ├── docker-compose.yml
│   ├── graf
│   │   ├── defaults.ini
│   │   └── Dockerfile
│   ├── prom
│   │   ├── Dockerfile
│   │   └── prometheus.yml
│   └── README.md
├── scripts
│   ├── ansible_install.sh
│   ├── ansi_docker.sh
│   ├── app_install.sh
│   ├── bash_config.sh
│   ├── db_install.sh
│   ├── dns_config.sh
│   ├── docker_install.sh
│   ├── install.sh
│   ├── lb_install.sh
│   └── redis_install.sh
└── Vagrantfile
```

