docker build -t nfs-server /vagrant/services/nfs
docker run -d --name nfs-container nfs-server
