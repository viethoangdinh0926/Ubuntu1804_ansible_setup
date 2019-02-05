#!/bin/bash

setup () {
echo "IloveEMC" | sudo -S apt update
echo "IloveEMC" | sudo -S rm /var/lib/apt/lists/lock
echo "IloveEMC" | sudo -S rm /var/cache/apt/archives/lock
echo "IloveEMC" | sudo -S rm /var/lib/dpkg/lock
echo "IloveEMC" | sudo -S dpkg --configure -a
echo "IloveEMC" | sudo -S apt install -y software-properties-common
echo "IloveEMC" | sudo -S apt-add-repository -y ppa:ansible/ansible
echo "IloveEMC" | sudo -S apt update
echo "IloveEMC" | sudo -S apt install -y git openssh-server ansible

echo "all:" | sudo tee --append /etc/ansible/hosts
echo "  hosts:" | sudo tee --append /etc/ansible/hosts
echo "    127.0.0.1" | sudo tee --append /etc/ansible/hosts

sudo chmod a+w /var/log
touch /var/log/ansible.log

#cd /tmp
#rm -rf ubuntu_boilerplate
#git clone https://tepbjppl:amymullins2018@github.com/ekaley/ubuntu_boilerplate.git

cd /home/tom/setup/ansible
ansible-playbook site.yml --connection=local -vv --extra-vars 'ansible_become_pass=IloveEMC'

echo "IloveEMC" | sudo -S sed -i '$d' /home/tom/.profile
echo "IloveEMC" | sudo -S sed -i '/gnome-terminal/d' /home/tom/.bashrc
echo "IloveEMC" | sudo -S sed -i '/AutomaticLogin/d' /etc/gdm3/custom.conf

echo "IloveEMC" | sudo reboot
}

setup | tee /home/tom/Desktop/log
