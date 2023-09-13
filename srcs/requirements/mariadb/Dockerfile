FROM alpine:3.17
RUN apk update && apk add --no-cache mariadb && apk add --no-cache mariadb-client

COPY	./config/init.sql /etc/init.sql

ARG	MYSQL_USER \
   	MYSQL_PASSWORD \
    	MYSQL_ROOT_PASSWORD

RUN	mkdir /var/run/mysqld && \
	chmod 777 /var/run/mysqld && \
	mariadb-install-db --user=mysql --datadir=/var/lib/mysql && \
	sed -i "s/placeholder_username/${MYSQL_USER}/g" /etc/init.sql && \
	sed -i "s/placeholder_password/${MYSQL_PASSWORD}/g" /etc/init.sql && \
	sed -i "s/placeholder_root_password/${MYSQL_ROOT_PASSWORD}/g" /etc/init.sql



COPY	./config/network.cnf /etc/my.cnf.d/mariadb-server.cnf
EXPOSE 3306
CMD ["mysqld", "--user=mysql", "--datadir=/var/lib/mysql", "--init-file=/etc/init.sql"]

