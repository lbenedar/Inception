FROM 		debian:buster-20210621
MAINTAINER	Lorette Benedar <lbenedar@student.21-school.ru>
WORKDIR		/

RUN			apt-get -y update \
            && apt-get -y install mariadb-server

VOLUME      /var/lib/mysql
RUN         mkdir -p /var/run/mysqld/ && \
            chmod -R 777 /var/run/mysqld/

COPY        my.cnf /etc/mysql/
COPY		create_db.sql wp_db.sql setup_wp.sh ./

EXPOSE      3306
CMD	    ["sh", "setup_wp.sh"]
