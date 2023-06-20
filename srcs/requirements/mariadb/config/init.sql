--create db

CREATE DATABASE wordpress;

--set root pass
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('placeholder_root_password');

--create new user
CREATE USER 'placeholder_username'@'localhost' IDENTIFIED BY 'placeholder_password';
GRANT ALL PRIVILEGES ON mydatabase.wordpress TO 'placeholder_username'@'localhost';

