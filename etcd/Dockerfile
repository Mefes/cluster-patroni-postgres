FROM centos:latest 
RUN yum -y install etcd
COPY ./run.sh /docker-entrypoint-initdb.d/run.sh
RUN chmod 0666 /docker-entrypoint-initdb.d/run.sh

