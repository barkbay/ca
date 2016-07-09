#!/bin/bash

. ./config.sh
 
cd ${CA_DIR}

openssl req -config intermediate/openssl.cnf -new -sha256 \
            -key intermediate/private/intermediate.key.pem \
            -out intermediate/csr/intermediate.csr.pem

#Enter pass phrase for intermediate.key.pem: secretpassword
#You are about to be asked to enter information that will be incorporated
#into your certificate request.
#-----
#Country Name (2 letter code) [XX]:GB
#State or Province Name []:England
#Locality Name []:
#Organization Name []:Alice Ltd
#Organizational Unit Name []:Alice Ltd Certificate Authority
#Common Name []:Alice Ltd Intermediate CA
#Email Address []:
