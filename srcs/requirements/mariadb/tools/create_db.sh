#!/bin/sh

# Start MariaDB service
sleep 5
service mysql start

sleep 5

# Perform database setup and configuration
mysql -h localhost --password=pass -e "create database if not exists mydb;"
mysql -h localhost --password=pass -e "GRANT ALL PRIVILEGES ON mydb.* TO 'ael-hayy'@'%' IDENTIFIED BY 'pass';"
mysql -h localhost --password=pass -e "FLUSH PRIVILEGES;"
# mysql -h localhost --password=pass -e "use mysql;UPDATE user SET Password=PASSWORD('pass') WHERE user='root';UPDATE user SET plugin = 'mysql_native_password', host = '%' WHERE user = 'root';FLUSH PRIVILEGES;"

service mysql stop

mysqld
