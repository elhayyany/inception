all:
	sudo docker compose -f ./srcs/docker-compose.yml up --build
build:
	sudo docker compose -f ./srcs/docker-compose.yml build
up:
	sudo docker compose -f ./srcs/docker-compose.yml up
down:
	sudodocker compose -f ./srcs/docker-compose.yml down
fclean:
	sudo docker system prune -a ; \
	sudo rm -rf /home/ael-hayy/data/mysql/* && \
	sudo rm -rf /home/ael-hayy/data/wordpress/*