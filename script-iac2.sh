#!/bin/bash
#=====================================
# Marcelo de Rezende Maciel
# https://github.com/marcelormaciel
# 20/03/2025 v1.0
# script deve ser executado como root
#=====================================

echo "Atualizando servidor..."
apt-get update
apt-get upgrade -y

echo "Instalando Apache..."
apt-get install apache2 -y
echo "Instalando Unzip..."
apt-get install unzip -y
echo "Instalando wget..."
apt-get install wget -y

echo "Baixando projeto para deploy..."
cd /tmp
wget -c https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando projeto e realizando deploy..."
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/hmtl/

echo "Deploy finalizado..."
