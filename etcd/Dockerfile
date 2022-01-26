FROM centos:latest 
ENV ETCDVERSION=3.3.13 CONFDVERSION=0.16.0
RUN yum -y update; yum clean all
# RUN yum -y install etcd
# Download etcd
RUN curl -sL https://github.com/coreos/etcd/releases/download/v${ETCDVERSION}/etcd-v${ETCDVERSION}-linux-amd64.tar.gz \
            | tar xz -C /bin --strip=1 --wildcards --no-anchored etcd etcdctl \
    && curl -sL https://github.com/kelseyhightower/confd/releases/download/v${CONFDVERSION}/confd-${CONFDVERSION}-linux-amd64 \
            > /bin/confd && chmod +x /bin/confd 
USER postgres
# COPY extras/confd/conf.d/haproxy.toml /etc/confd/conf.d/
# COPY extras/confd/templates/haproxy.tmpl /etc/confd/templates/
COPY ./run.sh /docker-entrypoint-initdb.d/run.sh
# COPY ./etcd.conf /etc/default/etcd.conf
RUN chmod 0666 /docker-entrypoint-initdb.d/run.sh
