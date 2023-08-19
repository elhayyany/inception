service mysql start
mysql -e "CREATE DATABASE IF NOT EXISTS \`$DB_NAME\` ;"
mysql -e "CREATE USER IF NOT EXISTS '$USER_NAME'@'%' IDENTIFIED BY '$DB_PASS' ;"
mysql -e "GRANT ALL PRIVILEGES ON \`$DB_NAME\`.* TO '$USER_NAME'@'%' ;"


service mysql stop

mysqld_safe