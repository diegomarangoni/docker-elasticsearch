FROM elasticsearch:1.7

COPY cloud-etcd-1.0-SNAPSHOT.zip /tmp/

RUN /usr/share/elasticsearch/bin/plugin --install cloud-etcd --url file:///tmp/cloud-etcd-1.0-SNAPSHOT.zip \
    && rm -rf /tmp/*
