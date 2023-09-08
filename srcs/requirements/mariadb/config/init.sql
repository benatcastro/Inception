--create db
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('root1234');

CREATE DATABASE wordpress;

--create new user
CREATE USER 'placeholder_username'@'%' IDENTIFIED BY 'placeholder_password';
GRANT ALL PRIVILEGES ON wordpress.* TO 'placeholder_username'@'%';
FLUSH PRIVILEGES;
