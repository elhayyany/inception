FROM debian:bullseye

RUN apt-get update && apt-get install -y mariadb-server mariadb-client

RUN sed -i 's/^bind-address\s*=.*/bind-address = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf
COPY tools/create.sh /
RUN chmod 777 /create.sh
ARG  MYSQL_USER MYSQL_PASSWORD MYSQL_DB MYSQL_HOST DB_ROOT_PASSWORD
RUN service mysql start && ./create.sh
CMD ["mysqld"]