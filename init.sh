#!/bin/bash

cd /$HOME/CA
mkdir -p certs crl newcerts private intermediate
chmod 700 private
touch index.txt
echo 1000 > serial

cd $HOME/CA/intermediate
mkdir -p certs crl csr newcerts private
chmod 700 private
touch index.txt
echo 1000 > serial
echo 1000 > $HOME/CA/intermediate/crlnumber