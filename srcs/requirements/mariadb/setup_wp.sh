#!/bin/sh
if [ ! -d "/var/lib/mysql/$DB_NAME" ]; then
service mysql start
    sed -i 's@$DB_NAME@'"$DB_NAME"'@' create_db.sql
    sed -i 's@$DB_ROOT@'"$DB_ROOT"'@' create_db.sql
    sed -i 's@$DB_PASSWORD_ROOT@'"$DB_PASSWORD_ROOT"'@' create_db.sql
    sed -i 's@$DB_USER@'"$DB_USER"'@' create_db.sql
    sed -i 's@$DB_PASSWORD_USER@'"$DB_PASSWORD_USER"'@' create_db.sql
    mysql -u root < "create_db.sql"
    mysql -u root < "wp_db.sql"
    mysqladmin --user=root password "$ROOT_PASS"
service mysql stop
fi
/usr/sbin/mysqld
