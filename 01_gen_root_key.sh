#!/bin/bash

. ./config.sh

cd ${CA_DIR}
openssl genrsa -aes256 -out private/ca.key.pem 4096

#Enter pass phrase for ca.key.pem: secretpassword
#Verifying - Enter pass phrase for ca.key.pem: secretpassword

chmod 400 private/ca.key.pem
