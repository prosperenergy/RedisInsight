FROM --platform=linux/amd64 valkey/valkey:8

COPY redis.conf /etc/redis/

CMD [ "valkey-server", "/etc/redis/redis.conf" ]
