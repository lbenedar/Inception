FROM 		debian:buster-20210621
MAINTAINER	Lorette Benedar <lbenedar@student.21-school.ru>
WORKDIR	    /

RUN         apt-get -y update \
            && apt-get -y install nginx openssl

COPY		default.conf /etc/nginx/conf.d/default.conf
COPY		nginx.crt /etc/ssl/certs/nginx.crt
COPY		nginx.key /etc/ssl/private/nginx.key
VOLUME      /var/www/html

EXPOSE      443
CMD         ["nginx", "-g", "daemon off;"]
