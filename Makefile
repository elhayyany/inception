all:
	sudo docker-compose -f ./srcs/docker-compose.yml up --build -d
build:
	sudo docker-compose -f ./srcs/docker-compose.yml build
up:
	sudo docker-compose -f ./srcs/docker-compose.yml up
down:
	sudo docker-compose -f ./srcs/docker-compose.yml down
fclean:
	sudo docker system prune -a ; \
	sudo rm -rf /home/ael-hayy/data/mysql/* && \
	sudo rm -rf /home/ael-hayy/data/wordpress/*


intracmd:
	docker stop $(docker ps -qa) ; \
	docker rm $(docker ps -qa) ; \
	docker rmi -f $(docker images -qa) ; \
	docker volume rm $(docker volume ls -q) ; \
	docker network rm $(docker network ls -q) 2>/dev/null