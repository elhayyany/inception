#!/bin/sh

mkdir -p /var/www/html/wordpress
cd /var/www/html/wordpress

wp core download --allow-root

wp config create --dbname=$DB_NAME --dbuser=$USER_NAME --dbpass=$DB_PASS --dbhost=mariadb --allow-root

wp core install  --title=YourBlogTitle --admin_name=$WP_ADMIN --admin_password=$WP_ADMIN_PSW --admin_email=$WP_ADMIN_EMAIL --allow-root
# wp user create user aziz1482002@gmail.com --role=author --user_pass=havenskey --allow-root


/usr/sbin/php-fpm7.3 -F