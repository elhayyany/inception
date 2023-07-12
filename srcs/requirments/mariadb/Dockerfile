FROM debian:bullseye

RUN apt-get update && apt-get -y install mariadb-server mariadb-client
RUN rm -rf /var/lib/apt/lists/*
RUN mkdir -p /var/run/mysqld
RUN chown -R mysql:mysql /var/run/mysqld
RUN chmod 7doc77 /var/run/mysqld

EXPOSE 3306

COPY ./conf/wordpress.sql /usr/local/bin/
COPY ./tools/create_db.sh /usr/local/bin/
ENTRYPOINT ["create_db.sh"]



CMD ["mysqld", "--bind-address=0.0.0.0"]