openssl ecparam -name secp384r1 -genkey | openssl ec -aes-256-cbc -out intermediate/private/intermediate.key.pem
openssl req -config openssl.cnf -new -key intermediate/private/intermediate.key.pem -out intermediate/csr/intermediate.csr.pem  -subj '/C=CountyCode/ST=City/O=Organisation/OU=OrgaUnit/CN=Intermediate'
openssl ca -config openssl.cnf -name ca_root -extensions ext_intermediate -notext -in intermediate/csr/intermediate.csr.pem -out intermediate/certs/intermediate.cert.pem
echo 'Verify'
openssl x509 -noout -text -in intermediate/certs/intermediate.cert.pem
openssl verify -CAfile root/certs/root.cert.pem intermediate/certs/intermediate.cert.pem
echo 'Creating chain file'
cat intermediate/certs/intermediate.cert.pem root/certs/root.cert.pem > intermediate/certs/chain.cert.pem

