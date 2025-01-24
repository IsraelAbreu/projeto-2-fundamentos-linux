#!/bin/bash

echo "Atualização lista de repositórios e pacotes do sistema"
apt-get update && sudo apt-get upgrade -y

echo "Instalando Apache2"
apt-get install apache2 -y

echo "Instalando unzip"
apt-get install unzip -y

echo "Acessando /tmp/, baixando e descompactando projeto"

cd /tmp/
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

rm /var/www/html/index.html && echo "index.html do apache removido"

cd linux-site-dio-main && cp -R ./* /var/www/html/

echo "Concluído! Projeto copiado para o repositório html do apache"