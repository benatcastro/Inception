FROM alpine:3.17
RUN apk update && 	apk add --no-cache 	\
		  	php81 			\
		  	php81-fpm 		\
			php81-openssl		\
   			php81-curl		\
			php81-mysqli		\
			php81-iconv		\
   			wget			\
			unzip			\
   			mysql-client		\
			php81-phar
      			

RUN mkdir -p /var/www/html

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar	\
	&& chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp			\
 	&& wget https://wordpress.org/latest.zip					\
  	&& unzip latest.zip								\	
   	&& rm latest.zip
	
RUN	addgroup www && adduser -D -G www php

ARG	WORDPRESS_DB_NAME	WORDPRESS_DB_NAME	WORDPRESS_TITLE		WORDPRESS_USERNAME	WORDPRESS_PASSWORD WORDPRESS_EMAIL		MYSQL_USER	MYSQL_PASSWORD
	

RUN mkdir docker_utils
COPY tools/configure.sh .
COPY conf/www.conf /etc/php81/php-fpm.d/www.conf
RUN chmod +x configure.sh

CMD ./configure.sh

