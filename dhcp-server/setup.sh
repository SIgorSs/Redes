sudo apt-get update
sudo apt-get install -y isc-dhcp-server
sudo cp /vagrant/dhcpd.conf /etc/dhcp/dhcpd.conf
sudo systemctl restart isc-dhcp-server
sudo apt-get install -y docker.io
sudo systemctl start docker
sudo usermod -aG docker $USER
sudo systemctl restart docker
