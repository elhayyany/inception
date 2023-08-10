# FROM debian:buster


# RUN apt-get update && apt-get install -y curl
# RUN curl -LsS https://r.mariadb.com/downloads/mariadb_repo_setup | bash
# RUN apt-get install -y mariadb-server mariadb-client --fix-broken --fix-missing
# RUN sed -i 's/^bind-address\s*=.*/bind-address = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf
# COPY tools/create_db.sh /
# RUN chmod 777 /create_db.sh
# ARG  MYSQL_USER MYSQL_PASSWORD MYSQL_DB MYSQL_HOST DB_ROOT_PASSWORD
# # RUN sleep 10 ; service mysql  && ./create_db.sh
# CMD ["./create_db.sh"]
FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server 

RUN sed -i 's/^bind-address\s*=.*/bind-address = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf
COPY tools/create_db.sh /
RUN chmod 777 /create_db.sh
ARG  MYSQL_USER MYSQL_PASSWORD MYSQL_DB MYSQL_HOST DB_ROOT_PASSWORD
# RUN service mysql start && ./create.sh
CMD ["/create_db.sh"]

