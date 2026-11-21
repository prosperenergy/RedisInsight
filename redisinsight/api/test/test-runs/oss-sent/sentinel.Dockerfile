FROM valkey/valkey:8
COPY sentinel.conf sentinel.users.acl /etc/redis/
ENTRYPOINT [ "valkey-server", "/etc/redis/sentinel.conf", "--sentinel" ]
