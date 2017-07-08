 #!/bin/sh
mysqldump  -u root -1q2w3e ccstudio | gzip >MySQLDB_`date +"%Y%m%d"`.sql.gz
