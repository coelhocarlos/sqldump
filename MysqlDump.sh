#!/bin/bash

#######################################
# Backup diario das bases do MySQL    
# Criado por Felipe Savoia                  
#######################################

#VARIAVEIS
DATAHORA=`date +%Y%m%d-%H%M`
MYSQLDUMP=/usr/bin/mysqldump
MYSQLDIR='cd /var/www/html/msqlbackup/'
TAR=/bin/tar
RM=/bin/rm

#Realizando o backup de todas as bases
$MYSQLDUMP -uroot -p1q2w3e  --all-databases > /var/www/html/msqlbackup/mysql.bkp_$DATAHORA

#Entrando no diretorio de backup
$MYSQLDIR

#Compactando o backup
$TAR czvf mysql.bkp_$DATAHORA.tar.gz mysql.bkp_$DATAHORA
$RM mysql.bkp_$DATAHORA
