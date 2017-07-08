 #!/bin/sh
 mysqldump -u root -p 1q2w3e --opt db1.sql > /respaldosql/db1.sql
 mysqldump -u root -p 1q2w3e --opt db2.sql > /respaldosql/db2.sql
 cd /mnt/hdex/mysqlbackup
 tar -zcvf backupsql_$(date +%d%m%y).tgz *.sql
 find -name '*.tgz' -type f -mtime +2 -exec rm -f {} \;
