# FROM debian:buster

# RUN apt-get update; apt-get install  php php-fpm php-mysql curl mariadb-client -y 

# RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp
# RUN mkdir wordpress; cd wordpress && wp core --allow-root download; cd && mkdir /run/php

# COPY tools/create.sh /
# COPY conf/www.conf /etc/php/7.3/fpm/pool.d/
# RUN chmod +x /create.sh
# CMD ["/create.sh"]
# # CMD [ "bash", "sleep 3" ]


FROM debian:buster
RUN  apt-get  update && apt-get install -y curl unzip php-fpm php-mysql && mkdir -p /run/php
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
# COPY ./tools/setting.sh ./
COPY tools/create.sh /
RUN chmod +x ./create.sh
EXPOSE 9000
CMD ["./create.sh"]













