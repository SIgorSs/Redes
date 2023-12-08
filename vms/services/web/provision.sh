docker build -t web-server /vagrant/services/web

docker run -d --name web-container -p 80:80 web-server
