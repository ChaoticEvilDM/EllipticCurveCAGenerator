name=$1

if [[ -z $name ]] ; then
echo 'Client name argument missing'
exit 1 
fi

openssl ecparam -name secp384r1 -genkey | openssl ec -aes-256-cbc -out client/private/$name.key.pem
openssl req -config openssl.cnf -new -key client/private/$name.key.pem -out client/csr/$name.csr.pem
openssl ca -config openssl.cnf -extensions ext_client -notext -in client/csr/$name.csr.pem -out client/certs/$name.cert.pem

