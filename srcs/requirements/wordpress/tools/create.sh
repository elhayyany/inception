#!/bin/sh

mkdir -p /var/www/wordpress
cd /var/www/wordpress
rm -rf *
wp core download --allow-root
cp wp-config-sample.php wp-config.php

sed -i 's/listen = \/run\/php\/php-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf

sed -i "s/database_name_here/$DB_NAME/g" wp-config.php
sed -i "s/username_here/$USER_NAME/g" wp-config.php
sed -i "s/password_here/$DB_PASS/g" wp-config.php
sed -i "s/localhost/$DB_HOST/g" wp-config.php

wp core install --url=ael-hayy.42.fr --title=YourBlogTitle --admin_name=aziz --admin_password=havenskey --admin_email=aziz1482002@gmail.com --allow-root
wp user create user aziz1482002@gmail.com --role=author --user_pass=havenskey --allow-root


/usr/sbin/php-fpm7.3 -F