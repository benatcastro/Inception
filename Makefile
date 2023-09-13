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

clean:
	sudo docker system prune -a

clear_data:
	sudo rm -rf /home/becastro/data
	sudo mkdir -p /home/becastro/data/wordpress
	sudo mkdir -p /home/becastro/data/database
	@printf "Reset all data in /home/becastro/data directory\n"


