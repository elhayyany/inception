FROM debian:bullseye

RUN apt-get update && apt-get -y install mariadb-server mariadb-client \ ; rm -rf /var/lib/apt/lists/* \ ; mkdir -p /var/run/mysqld \ chown -R mysql:mysql /var/run/mysqld \ ; chmod 777 /var/run/mysqld

EXPOSE 3306

COPY ./tools/create_db.sh /usr/local/bin/
COPY ./conf/wordpress.sql /usr/local/bin/
ENTRYPOINT ["create_db.sh"]


CMD ["mysqld", "--bind-address=0.0.0.0"]