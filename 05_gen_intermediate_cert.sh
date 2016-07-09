#!/bin/bash
. ./config.sh
 
cd ${CA_DIR}

openssl ca -config openssl.cnf -extensions v3_intermediate_ca \
           -days 3650 -notext -md sha256 \
           -in intermediate/csr/intermediate.csr.pem \
           -out intermediate/certs/intermediate.cert.pem

#Enter pass phrase for ca.key.pem: secretpassword
#Sign the certificate? [y/n]: y

chmod 444 intermediate/certs/intermediate.cert.pem

