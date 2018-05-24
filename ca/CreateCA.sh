openssl ecparam -name secp384r1 -genkey | openssl ec -aes-256-cbc -out root/private/root.key.pem
openssl req -config openssl.cnf -key root/private/root.key.pem -new -extensions ext_root -out root/certs/root.cert.pem -x509 -subj '/C=CountyCode/ST=City/O=Organisation/OU=OrgaUnit/CN=Root CA' -days 7300
echo 'Verify:'
openssl x509 -noout -text -in root/certs/root.cert.pem

