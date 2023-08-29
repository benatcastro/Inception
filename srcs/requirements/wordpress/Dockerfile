FROM alpine:3.17
RUN apk update && 	apk add --no-cache 	\
		  	php81 			\
		  	php81-fpm 		\
			php81-phar		\	
			wget			\
			unzip 

RUN mkdir -p /var/www/html

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp && wget https://wordpress.org/latest.zip && unzip latest.zip && rm latest.zi

ARG	WORDPRESS_DB_NAME	\
	MYSQL_USER		\
	MYSQL_PASSWORD

RUN mkdir docker_utils
COPY conf/start.sh / 
COPY conf/movesources.sh / 

RUN chmod +x start.sh && chmod +x movesources.sh 

WORKDIR /var/www/html


RUN wp config create --dbname=${WORDPRESS_DB_NAME} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=mariadb
CMD ["php-fpm81", "--nodaemonize"]

