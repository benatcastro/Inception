up:
	sudo mkdir -p /home/becastro/data/wordpress
	sudo mkdir -p /home/becastro/data/database
	sudo docker-compose -f srcs/docker-compose.yml up --build
no_cache:
	sudo docker-compose -f srcs/docker-compose.yml build --no-cache
	sudo docker-compose -f srcs/docker-compose.yml up
	@printf "Inception builded with no pre existing cache\n"
down:
	sudo docker-compose -f srcs/docker-compose.yml down -v

stop:
	sudo docker stop $(sudo docker ps -aq)

rmi:
	sudo docker rmi -f $(sudo docker images -qa)

volume_rm:
	sudo docker volume rm $(sudo docker volume ls -q)

network_rm:
	sudo docker network rm $(sudo docker network ls -q)


clean:
	sudo docker system prune -a

clear_data:
	sudo rm -rf /home/becastro/data
	sudo mkdir -p /home/becastro/data/wordpress
	sudo mkdir -p /home/becastro/data/database
	@printf "Reset all data in /home/becastro/data directory\n"
re: down up
	@printf "Inception relaunched (this options does not clear the volume data, use make clear_data)\n"


