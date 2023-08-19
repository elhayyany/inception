FROM debian:buster
RUN  apt-get  update && apt-get install -y curl unzip php-fpm php-mysql mariadb-client && mkdir -p /run/php

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp


COPY tools/create.sh /

COPY conf/www.conf /etc/php/7.3/fpm/pool.d/

RUN chmod +x ./create.sh

EXPOSE 9000

CMD ["./create.sh"]



