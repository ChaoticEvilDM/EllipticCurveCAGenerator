mkdir -p {root,intermediate}/{certs,crl,csr,newcerts,private}
mkdir -p {client,server}/{certs,csr,pfx,private}
touch {root,intermediate}/database
echo 1000 | tee {root,intermediate}/{serial,crlnumber}
chmod 700 {root,intermediate,client,server}/private
