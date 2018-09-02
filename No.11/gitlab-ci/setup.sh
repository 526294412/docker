#/bin/sh

sudo yum install -y yum upgrade
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
