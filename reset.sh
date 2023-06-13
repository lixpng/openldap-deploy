# /bin/sh
# 清楚数据，重新启动时会启动一个新的 LDAP 服务
rm -rf ./data/mount-out/etc/ldap/*
rm -rf ./data/mount-out/var/lib/*
# 清除证书
# rm -rf ./data/mount-in/certs/*