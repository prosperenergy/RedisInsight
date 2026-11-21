FROM --platform=linux/amd64 valkey/valkey:8

USER root

COPY cluster-create.sh ./

RUN chmod a+x cluster-create.sh

CMD ["/bin/sh", "./cluster-create.sh"]
