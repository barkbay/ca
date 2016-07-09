#!/bin/bash

cd $HOME/CA

openssl genrsa -aes256 \
    	       -out freeipa/freeipa.example.com.key.pem 2048
chmod 400 freeipa/freeipa.example.com.key.pem

openssl req -config intermediate/openssl.cnf \
            -key freeipa/freeipa.example.com.key.pem \
            -new -sha256 -out freeipa/freeipa.example.com.csr.pem
