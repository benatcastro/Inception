--create db

CREATE DATABASE IF NOT EXISTS wordpress;


--create new user
CREATE USER IF NOT EXISTS 'placeholder_username'@'%' IDENTIFIED BY 'placeholder_password';
GRANT ALL PRIVILEGES ON wordpress.* TO 'placeholder_username'@'%';

SET PASSWORD FOR 'root'@'%' = PASSWORD('root1234');
