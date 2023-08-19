FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server
	
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf


COPY tools/create_db.sh /create_db.sh


EXPOSE 3306

CMD ["bash", "/create_db.sh"]



