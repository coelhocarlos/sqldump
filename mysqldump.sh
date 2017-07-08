#Backup MySQL database daily using cron job
#1) create a bk directory under home directory, in my case /home/jiansen,
#cd bk
#) Create a shell scrip MySQLdump.sh
#mysqldump  -u root -pmypass mydb | gzip >MySQLDB_`date +"%Y%m%d"`.sql.gz
#replace root,  mypass, mydb to your databse username, password and database name
#date +"%Y%m%d
#is shell comand to produce year, month and day, for example  20140603
#example output
# MySQLDB_20140603.sql.gz
#3) Create a cron job
 #crontab -e
#30 23 * * * /home/jiansen/bk/MySQLdump.sh 2>&1>>/home/jiansen/bk/mysqbackup.log
#each night  23:30pm run  /home/jiansen/bk/MySQLdump.sh and dump errors
#to logfile 
#4) to list cron job
#  crontab -l
#5) To remove cron job
#  crontab -r



#!/bin/sh
mysqldump  -u root -p1q2w3e ccstudio | gzip >MySQLDB_`date +"%Y%m%d"`.sql.gz
