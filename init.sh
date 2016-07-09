#!/bin/bash

. ./config.sh

echo "==> Your CA directory is ${CA_DIR}"
CA_DIR_INTER=${CA_DIR}/intermediate

mkdir -p ${CA_DIR} ${CA_DIR_INTER}

envsubst '${CA_DIR}' < openssl.cnf.tmpl > ${CA_DIR}/openssl.cnf
envsubst '${CA_DIR}' < intermediate/openssl.cnf.tmpl > ${CA_DIR}/intermediate/openssl.cnf

mkdir -p ${CA_DIR}/certs ${CA_DIR}/crl ${CA_DIR}/newcerts ${CA_DIR}/private 
chmod 700 ${CA_DIR}/private
touch ${CA_DIR}/index.txt
echo 1000 > ${CA_DIR}/serial

mkdir -p ${CA_DIR_INTER}/certs ${CA_DIR_INTER}/crl ${CA_DIR_INTER}/csr ${CA_DIR_INTER}/newcerts ${CA_DIR_INTER}/private
chmod 700 ${CA_DIR_INTER}/private
touch ${CA_DIR_INTER}/index.txt
echo 1000 > ${CA_DIR_INTER}/serial
echo 1000 > ${CA_DIR_INTER}/crlnumber

cp -v config.sh ${CA_DIR}
cp -v 0*.sh ${CA_DIR}

echo "==> Now go to ${CA_DIR}"
