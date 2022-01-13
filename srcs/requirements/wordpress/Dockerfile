FROM 		debian:buster-20210621
MAINTAINER	Lorette Benedar <lbenedar@student.21-school.ru>
WORKDIR		/

RUN         apt-get -y update \
            && apt-get -y install	php php-fpm php-mysql php-mbstring php-zip php-gd \
            						php-xml php-pear php-gettext php-cgi wget

RUN         service php7.3-fpm start \
            && mkdir -p /var/www/html \
            && chmod -R 777 /var/www/html
VOLUME      /var/www/html

RUN         wget https://wordpress.org/latest.tar.gz \
            && tar zxvf latest.tar.gz -C . \
            && rm -rf latest.tar.gz

COPY        www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY        start.sh wp-config.php /

EXPOSE      9000
WORKDIR     /var/www/html/
CMD	    ["sh", "/start.sh"]
