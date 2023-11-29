cp /vagrant/services/dns/named.conf.options /etc/bind/named.conf.options
cp /vagrant/services/dns/named.conf.local /etc/bind/named.conf.local
cp /vagrant/services/dns/named.conf.default-zones /etc/bind/named.conf.default-zones

docker build -t dns-server /vagrant/services/dns

docker run -d --name dns-container dns-server
