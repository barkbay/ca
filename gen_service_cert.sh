#!/bin/bash

if [ -z "$1" ]
then
	echo "First arg must be the service name (freeipa,auth,ldap...)"
	exit 2
fi
service=$1
cd $HOME/CA

if [ -d "$service" ]; then
	echo "$HOME/CA/$service already exists"
	exit 3
fi

mkdir -p $service

openssl genrsa -aes256 \
    	       -out $service/$service.example.com.key.pem 2048
chmod 400 $service/$service.example.com.key.pem

openssl req -config intermediate/openssl.cnf \
            -key $service/$service.example.com.key.pem \
            -new -sha256 -out $service/$service.example.com.csr.pem

openssl ca -config intermediate/openssl.cnf \
           -extensions server_cert -days 375 -notext -md sha256 \
           -in $service/$service.example.com.csr.pem \
           -out $service/$service.example.com.cert.pem
chmod 444 $service/$service.example.com.cert.pem

