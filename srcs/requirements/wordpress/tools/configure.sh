cd /var/www/html


wp core download
wp config create 	--dbname=${WORDPRESS_DB_NAME} \
			--dbuser=${MYSQL_USER} \
			--dbpass=${MYSQL_PASSWORD} \
			--dbhost=${WORDPRESS_DB_HOST} --skip-check

sed -i 's/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0;/g' /etc/php81/php.ini

#sleep infinity
php-fpm81 --nodaemonize
