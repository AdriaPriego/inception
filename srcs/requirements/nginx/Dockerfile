FROM debian:11.9

RUN apt-get -y update && apt-get -y install nginx openssl

COPY ./conf/default /etc/nginx/default
COPY ./tools/ssl_cert_generator.sh /var/www

RUN chmod +x /var/www/ssl_cert_generator.sh

EXPOSE 443

ENTRYPOINT [ "/var/www/ssl_cert_generator.sh" ]

CMD ["nginx", "-g", "daemon off;"]
