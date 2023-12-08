# Configuração de Ambiente de Rede com Docker e Vagrant

Este repositório fornece os recursos necessários para configurar um ambiente de rede integrado, utilizando Docker e Vagrant. Ele abrange a implementação de servidores DHCP, DNS, Web (Apache), NFS e FTP, todos em um ambiente virtualizado para uma gestão e aprendizado simplificados.

## Pré-requisitos
Antes de começar, instale:
- Vagrant
- VirtualBox
- Docker

## Instalação

1. **Clone o Repositório:**
    ```bash
    git clone https://github.com/SIgorSs/Redes.git
    cd Redes
    ```

2. **Provisionamento com Vagrant:**
    ```bash
    vagrant up
    ```

3. **Acesso à Máquina Virtual Cliente:**
    ```bash
    vagrant ssh client
    ```

## Testando os Serviços

### DHCP
- **Verificação do IP na VM Cliente:**
  ```bash
  ip a
  ```
  A VM Cliente deve apresentar a rede `enp0s8` com um IP `192.168.56.X`.

### DNS
- **Teste do DNS:**
  ```bash
  cat /etc/resolv.conf
  ```

### Web (Apache)
- **Acesso ao Servidor Web:**
  Abra um navegador e acesse [http://192.168.56.7](http://192.168.56.7).

### NFS
- **Montagem do Compartilhamento NFS:**
  ```bash
  sudo mkdir /mnt/nfs
  sudo mount -t nfs 192.168.56.7:/nfsshare /mnt/nfs
  ls /mnt/nfs
  ```

### FTP
- **Conexão ao Servidor FTP:**
  ```bash
  ftp 192.168.56.7 21
  ```

## Encerramento do Ambiente

Para desligar e remover todos os recursos, incluindo máquinas virtuais e containers Docker:

```bash
vagrant destroy
```