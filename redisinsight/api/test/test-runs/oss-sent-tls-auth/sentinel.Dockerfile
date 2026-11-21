FROM valkey/valkey:8
COPY sentinel.conf users.acl certs/* /etc/redis/
ENTRYPOINT [ "valkey-server", "/etc/redis/sentinel.conf", "--sentinel" ]
