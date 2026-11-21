FROM valkey/valkey:8
COPY redis.conf users.acl /etc/redis/
ENTRYPOINT [ "valkey-server", "/etc/redis/redis.conf" ]
