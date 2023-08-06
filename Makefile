all:
	docker compose -f ./srcs/docker-compose.yml up --build
build:
	docker compose -f ./srcs/docker-compose.yml build
up:
	docker compose -f ./srcs/docker-compose.yml up
down:
	docker compose -f ./srcs/docker-compose.yml down
fclean:
	docker system prune -a ; \
	rm -rf /home/ael-hayy/data/mysql/* && \
	rm -rf /home/ael-hayy/data/wordpress/* \
	rm -rf /home/ael-hayy/data/portainer/*