#!/bin/bash

cd $HOME/CA

openssl ca -config intermediate/openssl.cnf \
           -extensions server_cert -days 375 -notext -md sha256 \
           -in freeipa/freeipa.example.com.csr.pem \
           -out freeipa/freeipa.example.com.cert.pem
chmod 444 freeipa/freeipa.example.com.cert.pem
