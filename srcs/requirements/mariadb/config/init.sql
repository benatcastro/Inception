--create db

CREATE DATABASE wordpress;

--create new user
CREATE USER 'placeholder_username'@'localhost' IDENTIFIED BY 'placeholder_password';
GRANT ALL PRIVILEGES ON mydatabase.wordpress TO 'placeholder_username'@'localhost';

--set root pass
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('root1234');

