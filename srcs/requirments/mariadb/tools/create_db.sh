mysql -h localhost --password=${DB_ROOT_PASSWORD} -e "create database if not exists ${MYSQL_DB};"
mysql -h localhost --password=${DB_ROOT_PASSWORD} -e "GRANT ALL PRIVILEGES ON ${MYSQL_DB}.* TO '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
mysql -h localhost --password=${DB_ROOT_PASSWORD} -e "FLUSH PRIVILEGES;"
mysql -h localhost --password=${DB_ROOT_PASSWORD} -e "use mysql;UPDATE user SET Password=PASSWORD('${DB_ROOT_PASSWORD}') WHERE user='root';UPDATE user SET plugin = 'mysql_native_password', host = '%' WHERE user = 'root';FLUSH PRIVILEGES;"
