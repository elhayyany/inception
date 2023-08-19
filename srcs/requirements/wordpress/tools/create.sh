#!/bin/sh


sleep 10
mkdir -p /var/www/html/wordpress
cd /var/www/html/wordpress

wp core download --allow-root

chown -R www-data:www-data .


wp config create --dbname=$DB_NAME --dbuser=$USER_NAME --dbpass=$DB_PASS --dbhost=mariadb --allow-root

# wp core install --url=localhost --title=YourBlogTitle --admin_name=$WP_ADMIN --admin_password=$WP_ADMIN_PSW --skip-email --allow-root
wp core install --url=localhost --title=INXEPTION --admin_name=$WP_ADMIN --admin_password=$WP_ADMIN_PSW --admin_email=$WP_ADMIN_EMAIL --allow-root

# wp user create $USER_NAME --role=author --user_pass=$DB_PASS --allow-root --skip-email
wp user create $USER_NAME $USER_EMAIL --role=author --user_pass=$USER_PASS --allow-root 


mkdir -p /run/php/

php-fpm7.3 --nodaemonize