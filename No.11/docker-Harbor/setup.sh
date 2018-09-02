#/bin/sh

sudo yum install -y yum upgrade yum-utils device-mapper-persistent-data wget
sudo yum install -y net-tools
sudo yum install -y curl policycoreutils openssh-server openssh-clients
sudo systemctl enable sshd
sudo systemctl start sshd
sudo yum install -y postfix
sudo systemctl  enable postfix
sudo systemctl start postfix
sudo firewall-cmd --permanent --add-service=http
sudo systemctl reload firewalld

sudo curl -sSL https://get.docker.com/ | sh
sudo curl -sSL https://get.daocloud.io/daotools/set_mirror.sh | sh -s http://b81aace9.m.daocloud.io
sudo systemctl restart docker
sudo yum -y install epel-release
sudo yum -y install python-pip
sudo yum clean all
sudo pip install docker-compose
sudo wget https://storage.googleapis.com/harbor-releases/harbor-online-installer-v1.5.2.tgz
