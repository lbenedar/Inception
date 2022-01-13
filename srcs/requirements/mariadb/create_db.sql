CREATE DATABASE $DB_NAME DEFAULT CHARACTER SET utf8;
CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD_USER';
CREATE USER '$DB_ROOT'@'%' IDENTIFIED BY '$DB_PASSWORD_ROOT';
GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_ROOT'@'%';
FLUSH PRIVILEGES;