#!/bin/bash
key_file="/etc/ssl/private/nginx-selfsigned.key"
crt_file="/etc/ssl/certs/nginx-selfsigned.cert"
if [ -e $key_file ] && [ -e $crt_file ]; then
	echo "Certificate alredy exist";
else
	openssl req -x509 -nodes -days 365 -newkey rsa:4096 -keyout $key_file -out $crt_file -subj "/C=ES/ST=Barcelona/L=Barcelona/O=42/CN=42";
fi
exec "$@"
