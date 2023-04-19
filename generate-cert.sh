# /bin/sh
# 注意填写 Common Name (e.g. server FQDN or YOUR name) [] 时要是 LDAP 访问域名
# 临时目录
mkdir .cert_tmp
cd .cert_tmp
# 创建根密钥
openssl genrsa -out ldapca.key 2048
# 创建自签名根证书
openssl req -x509 -new -nodes -key ldapca.key -sha256 -days 1024 -out ldapca.pem
# LDAP服务器创建私钥
openssl genrsa -out ldap.key 2048
# 创建证书签名请求
openssl req -new -key ldap.key -out ldap.csr
# 使用自定义根CA签署证书签名请求
openssl x509 -req -in ldap.csr -CA ldapca.pem -CAkey ldapca.key -CAcreateserial -out ldap.crt -days 36600 -sha256
# 拷贝
cp ldap.{crt,key} ldapca.pem /workspace/coder/openldap-docker-compose/data/mount-in/certs/
# 删除临时目录
rm -rf .cert_tmp





