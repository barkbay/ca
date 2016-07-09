Simple and stupid Certificate Authority setup
=====================================

Configuration file
------------------------

Edit the config.sh to reflect you environment

1. CA_DIR : the directory where you files will be generated
2. DOMAIN : your **fully** qualified domain name

Setup you CA directory
--------------------------------

```
# barkbay @ homer in ~/CA on git:master x [13:42:30] 
$ ./init.sh 
==> Your CA directory is /home/barkbay/MY-CA
« config.sh » -> « /home/barkbay/MY-CA/config.sh »
« 01_gen_root_key.sh » -> « /home/barkbay/MY-CA/01_gen_root_key.sh »
« 02_gen_root_cert.sh » -> « /home/barkbay/MY-CA/02_gen_root_cert.sh »
« 03_gen_intermediate_key.sh » -> « /home/barkbay/MY-CA/03_gen_intermediate_key.sh »
« 04_gen_intermediate_csr.sh » -> « /home/barkbay/MY-CA/04_gen_intermediate_csr.sh »
« 05_gen_intermediate_cert.sh » -> « /home/barkbay/MY-CA/05_gen_intermediate_cert.sh »
« 09_gen_service_cert.sh » -> « /home/barkbay/MY-CA/09_gen_service_cert.sh »
==> Now go to /home/barkbay/MY-CA
```

Generate your CA files
-------------------------------

* Go to your CA directory
* Run the 0*.sh files, one by one

Generate a web service certificate
------------------------------------------------

09_gen_service_cert.sh allow you to generate a web service certificate, it needs the name of your service as first parameter :

```
$ ./09_gen_service_cert.sh ldap
Generating RSA private key, 2048 bit long modulus
......+++
...................................................+++
e is 65537 (0x10001)
[.......]
Signature ok
Certificate Details:
        Serial Number: 4107 (0x100b)
        Validity
            Not Before: Jul  9 11:37:27 2016 GMT
            Not After : Jul 19 11:37:27 2017 GMT
        Subject:
            countryName               = FR
            stateOrProvinceName       = Paris
            organizationName          = Bidou Ltd
            commonName                = ldap.example2.com
        X509v3 extensions:
            X509v3 Basic Constraints: 
                CA:FALSE
            Netscape Cert Type: 
                SSL Server
            Netscape Comment: 
                OpenSSL Generated Server Certificate
            X509v3 Subject Key Identifier: 
                07:DB:59:46:80:79:7D:DB:AE:1A:BF:CC:8E:61:0E:9D:6A:31:94:0A
            X509v3 Authority Key Identifier: 
                keyid:C6:7B:53:46:E6:2E:99:14:42:DD:B7:3F:CD:47:41:DC:42:B0:FB:9D
                DirName:/C=FR/ST=Paris/O=Bidou Corp/CN=Bidou Corporation Root CA
                serial:10:00

            X509v3 Key Usage: critical
                Digital Signature, Key Encipherment
            X509v3 Extended Key Usage: 
                TLS Web Server Authentication
Certificate is to be certified until Jul 19 11:37:27 2017 GMT (375 days)
Sign the certificate? [y/n]:y


1 out of 1 certificate requests certified, commit? [y/n]y
Write out database with 1 new entries
Data Base Updated
```

