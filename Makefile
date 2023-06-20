up:
	sudo docker compose up
clean:
	sudo docker rm --force $(docker ps -a)

