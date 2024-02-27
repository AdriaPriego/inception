FROM debian:11

RUN apt-get update -y && apt-get install mariadb-server -y

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/mariadb.sh .

RUN chmod 777 mariadb.sh

CMD ["./mariadb.sh"]
