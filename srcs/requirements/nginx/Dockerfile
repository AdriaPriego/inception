FROM debian:11.9

RUN apt-get -y update && apt-get -y install nginx openssl

EXPOSE 443

COPY ./conf/default /etc/nginx/sites-enabled/default
COPY ./tools/ssl_cert_generator.sh /var/www

RUN chmod 755 /var/www/ssl_cert_generator.sh


ENTRYPOINT [ "/var/www/ssl_cert_generator.sh" ]

CMD ["nginx", "-g", "daemon off;"]
