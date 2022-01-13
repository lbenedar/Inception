#!/bin/sh
cp -a /wordpress/. /var/www/html/
sed -i 's@$DB_NAME@'"$DB_NAME"'@' /wp-config.php
sed -i 's@$DB_ROOT@'"$DB_ROOT"'@' /wp-config.php
sed -i 's@$DB_PASSWORD_ROOT@'"$DB_PASSWORD_ROOT"'@' /wp-config.php
sed -i 's@$DB_HOST@'"$DB_HOST"'@' /wp-config.php
sed -i 's@$TABLE_PREFIX@'"$TABLE_PREFIX"'@' /wp-config.php
mv /wp-config.php /var/www/html/
/usr/sbin/php-fpm7.3 --nodaemonize
