 #!/bin/sh
mysqldump  -u root -p1q2w3e ccstudio | gzip >MySQLDB_`date +"%Y%m%d"`.sql.gz
