# remove ( > /dev/null 2>&1 ) to display terminal outputs

#scalate access
echo "===> Scaling vagrant user permissions"
sudo echo "vagrant ALL=NOPASSWD:ALL" > /etc/sudoers.d/vagrant
sudo echo "sudo su" >> /home/vagrant/.bashrc

#update system
echo "===> Updating guest system"
sudo touch install_log.txt
sudo apt-get -yqq update > /dev/null 2>&1
sudo apt-get -yqq upgrade > /dev/null 2>&1
echo ".... Done!"

# install docker
echo "===> Installing Docker"
sudo apt install docker.io -y > /dev/null 2>&1

#alow ssh, http and https on firewall
echo "===> Enabling guest firewall"
sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https
sudo echo 'y' | sudo ufw enable