FROM valkey/valkey:8


ADD sentinel.conf /etc/redis/sentinel.conf
RUN chown valkey:valkey /etc/redis/sentinel.conf
ENV SENTINEL_QUORUM 2
ENV SENTINEL_DOWN_AFTER 5000
ENV SENTINEL_FAILOVER 10000
ENV SENTINEL_PORT 26000
ENV AUTH_PASS password
ENV REQUIREPASS=""
ADD entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]