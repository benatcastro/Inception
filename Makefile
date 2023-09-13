up:
	sudo docker-compose -f srcs/docker-compose.yml up --build
no_cache:
	sudo docker-compose -f srcs/docker-compose.yml build --no-cache
	sudo docker-compose -f srcs/docker-compose.yml up
	@printf "Inception builded with no pre existing cache\n"
down:
	sudo docker-compose -f srcs/docker-compose.yml down -v
clean:
	sudo docker stop $(docker ps -aq)
	sudo docker rmi -f $(docker images -qa)
	sudo docker volume rm $(docker volume ls -q)
	sudo docker network rm $(docker network ls -q)

clear_data:
	sudo rm -rf /home/$(USER)/data
	sudo mkdir -p /home/$(USER)/data/wordpress
	sudo mkdir -p /home/$(USER)/data/database
	@printf "Reset all data in /home/$(USER)/data directory\n"
re: down up
	@printf "Inception relaunched (this options does not clear the volume data, use make clear_data)\n"


