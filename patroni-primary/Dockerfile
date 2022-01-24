FROM centos:latest
RUN yum -y install python-psycopg2
RUN yum -y install python3-pip python3-dev libpq-dev 

RUN mkdir -p /data/patroni
RUN chown postgres:postgres /data/patroni
RUN chmod 700 /data/patroni