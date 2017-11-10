#!/bin/bash
docker exec -it tipaskdocker_mysql_1 mysqldump -utipaskdb -ppassword1  tipaskx | gzip > /usr/mysql_backup/tipaskx_$(date +%Y%m%d_%H%M%S).sql.gz