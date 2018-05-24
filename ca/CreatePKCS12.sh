name=$1

if [[ -z $name ]] ; then
echo 'Client name argument missing'
exit 1 
fi

openssl pkcs12 -export -out client/pfx/$name.pfx -inkey client/private/$name.key.pem -in client/certs/$name.cert.pem -certfile intermediate/certs/chain.cert.pem
