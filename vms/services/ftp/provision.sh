docker build -t ftp-server /vagrant/services/ftp

docker run -d --name ftp-container -p 21:21 ftp-server
