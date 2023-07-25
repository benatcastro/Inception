FROM alpine:3.17
RUN apk update && 	apk add --no-cache \
		  	php81 \
		  	php81-fpm \
			wget \
			unzip 

RUN mkdir -p /var/www/html

RUN wget https://wordpress.org/latest.zip && unzip latest.zip -d /var/www/html

CMD tail -f 
