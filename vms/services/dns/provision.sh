docker build -t dns-server /vagrant/services/dns

docker run -d --name dns-container dns-server
