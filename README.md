# Documentação - Trabalho Final - Administração de Redes

Este projeto tem como objetivo projetar, implementar e gerenciar um ambiente de rede utilizando tecnologia Linux, com ênfase nos serviços de DHCP, DNS, Web, FTP, NFS, e virtualização com Vagrant e Docker.

## Instalação

Antes de começar, certifique-se de ter instalado os seguintes componentes:

- [Docker](https://www.docker.com/)
- [VirtualBox](https://www.virtualbox.org/)
- [Vagrant](https://www.vagrantup.com/)

Clone o repositório em seu ambiente local:

```bash
git clone https://github.com/SIgorSs/Redes.git
cd Redes
```

Execute as VMs com o Vagrant:

```bash
cd DHCP_Server
vagrant up vm1
```

```bash
cd DHCP_Cliente
vagrant up vm2
```

Acesse a VM Execute Testes:

```bash
vagrant ssh vm1

```

Verifique a Configuração da Rede:

```bash
ping 192.168.50.11  # Verifique a conectividade com a VM2 (vm2)
exit

```

## Servidor DHCP

O DHCP (Dynamic Host Configuration Protocol) é um protocolo de rede que permite que os dispositivos obtenham automaticamente um endereço IP e outras configurações de rede quando se conectam a uma rede.

### Status do Servidor

Para verificar o status do servidor DHCP, utilize o comando:

```bash
sudo systemctl status isc-dhcp-server

```

## Servidor DNS

Um servidor DNS (Domain Name System) é responsável por converter nomes de domínio em endereços IP.

### Status do Servidor

Para verificar o status do servidor DNS, utilize o comando:

```bash
docker logs bind9-container
```

## Servidor Apache

O servidor Apache HTTP Server é um servidor web de código aberto utilizado para hospedar sites na Internet.

### Teste do Servidor

Abra o navegador nesta página: [http://localhost](http://localhost)

### Status do Servidor

Para verificar o status do servidor Apache, utilize o comando:

```bash
docker logs apache-container
```

## Servidor FTP

O servidor FTP é um protocolo de rede utilizado para transferir arquivos entre um cliente e um servidor.

### Teste do Servidor

Abra o terminal e digite:

```bash
ftp admin@192.168.0.10
```

### Status do Servidor

Para verificar o status do servidor FTP, utilize o comando:

```bash
docker logs ftp-container
```

## Servidor NFS

O NFS é um protocolo de compartilhamento de arquivos que permite que um sistema operacional acesse arquivos em um servidor remoto como se estivessem localmente armazenados.

### Status do Servidor

Para verificar o status do servidor NFS, utilize o comando:

```bash
docker logs nfs-test-server
```