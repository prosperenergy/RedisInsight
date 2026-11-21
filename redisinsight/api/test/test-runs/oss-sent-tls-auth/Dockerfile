FROM valkey/valkey:8
COPY redis.conf users.acl certs/* /etc/redis/
ENTRYPOINT [ "valkey-server", "/etc/redis/redis.conf" ]
