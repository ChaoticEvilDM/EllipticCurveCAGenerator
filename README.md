# EllipticCurveCAGenerator
These shellscripts can create an environment, a CA, intermediate CAs and client certificates with EC cryptography.

Req:
OpenSSL 1.0.2g or better. It'll work with any version that supports the EC in question, though one should use the latest patch. Not to be confused with running bleeding edge.

Files:
openssl.cnf
	- By default the root CA is valid for 10 years
	- By default the IM is valid for 5 years
	- You might want to customize the Certificate Details (C,ST,O,OU,CN)

CreateCA.sh
	- You might want to customize the CA Details (C,ST,O,OU,CN)

CreateIM.sh
	- You might want to customize the IM Details (C,ST,O,OU,CN)

Usage:
1. Run PrepareEnv.sh to set up files and folders.

2. Run CreateCA.sh to generate your CA.

3. Run CreateIM.sh to generate the intermediate CA.

4. Run CreateCert.sh to generate a cert in the client folder.

5. Run CreatePKCS12.sh to pack it into a .pfx file.

To do:
- Script for revoking Certs
- Option for multiple IM
- Move C,ST,O,OU and CN for CA and IM to openssl.cnf
