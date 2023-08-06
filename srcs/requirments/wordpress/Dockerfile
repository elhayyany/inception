FROM debian:bullseye
RUN apt-get update

RUN apt-get install -y php php-fpm php-mysql curl
RUN mkdir wordpress
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp
RUN cd wordpress && wp core --allow-root download
RUN cd && mkdir /run/php

EXPOSE 9000
COPY tools/create.sh /
COPY conf/www.conf /etc/php/7.3/fpm/pool.d/
RUN chmod +x /create.sh
CMD ["/create.sh"]