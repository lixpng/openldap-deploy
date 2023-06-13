使用 docker-compose 部署 OpenLDAP，若需要启用 LDAPS，需要先执行 generate-cert.sh

- data/mount-in/certs 存放 LDAPS 证书文件
- data/mount-in/ldif 存放自定义的 ldif，首次启动才会应用
- data/mount-in/ldif 存放自定义的 schema，首次启动才会应用
