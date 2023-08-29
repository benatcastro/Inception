FROM alpine:3.17
RUN apk update && 	apk add --no-cache 	\
		  	php81 			\
		  	php81-fpm 		\
			php81-phar		\	
			wget			\
			unzip 

RUN mkdir -p /var/www/html

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp && wget https://wordpress.org/latest.zip && unzip latest.zip

RUN mkdir docker_utils
COPY conf/start.sh / 
COPY conf/movesources.sh / 

RUN chmod +x start.sh && chmod +x movesources.sh 

WORKDIR /var/www/html

#RUN /movesources.sh && /start.sh

CMD ["php-fpm81", "-F"]

