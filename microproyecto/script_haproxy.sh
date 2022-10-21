#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install net-tools -y
sudo apt-get install vim -y

#Haproxy
echo "Instalando Haproxy"
sudo apt-get install haproxy -y
sudo systemctl enable haproxy 

#Import haproxy config file 
#sudo mv /etc/haproxy/haproxy.cfg /etc/haproxy/haproxy.cfg.old
#sudo cp /home/vagrant/shared/haproxy.cfg /etc/haproxy/

#start service
#systemctl start haproxy
#systemctl restart haproxy


