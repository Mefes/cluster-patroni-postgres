FROM centos:latest
LABEL FullName="Vladimir Kadochnikov" 
LABEL Email="vova.kadoch1995@gmail.com"
RUN yum -y update; yum clean all
RUN yum -y install sudo epel-release; yum clean all
RUN yum -y upgrade; yum clean all
RUN dnf install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-8-x86_64/pgdg-redhat-repo-latest.noarch.rpm
RUN dnf -qy module disable postgresql
RUN dnf install -y postgresql14-server
RUN dnf -y install python3 
RUN pip3 install --upgrade pip
RUN yum -y install gcc
RUN pip3 install psycopg2-binary
RUN pip3 install patroni[etcd]

#  RUN mkdir /data/patroni -p \
#     && chown postgres:postgres /data/patroni \
#     && chmod 700 /data/patroni 

COPY patroni.yml /etc/patroni.yml
COPY patroni-run.sh ./entrypoint.sh
USER postgres

ENTRYPOINT ["bin/sh", "/entrypoint.sh"]







#  RUN yum -y install python-psycopg2
#  RUN yum -y install python3-pip python3-dev libpq-dev 
#  RUN pip install patroni[etcd]
#  RUN mkdir -p /data/patroni
#  RUN chown postgres:postgres /data/patroni
#  RUN chmod 700 /data/patroni
