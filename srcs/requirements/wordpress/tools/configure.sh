cd /var/www/html


wp core download
wp config create 	--dbname=${WORDPRESS_DB_NAME} 		\
			--dbuser=${MYSQL_USER} 			\
			--dbpass=${MYSQL_PASSWORD} 		\
			--dbhost=${WORDPRESS_DB_HOST} --skip-check

wp core install 	--url=10.13.248.28	\
			--title=${WORDPRESS_TITLE}		\
			--admin_user=${WORDPRESS_USERNAME}	\
			--admin_password=${WORDPRESS_PASSWORD}	\
			--admin_email=${WORDPRESS_EMAIL}	\
			--skip-email
wp theme activate ${WORDPRESS_THEME}
sed -i 's/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0;/g' /etc/php81/php.ini

php-fpm81 --nodaemonize
