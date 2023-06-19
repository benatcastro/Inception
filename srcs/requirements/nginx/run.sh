IMAGE_NAME="nginx_test"
CONTAINER_NAME="nginx_server"
PORTS="80:80"

docker rm --force $(docker ps -aq)

# Remove pre created images

docker rmi --force nginx_test

# Build new one

docker build -t $IMAGE_NAME .

# Run

docker run -d --name $CONTAINER_NAME -p $PORTS -p 443:443 $IMAGE_NAME


