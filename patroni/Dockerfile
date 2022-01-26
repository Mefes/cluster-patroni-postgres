FROM centos:latest
LABEL FullName="Vladimir Kadochnikov" 
LABEL Email="vova.kadoch1995@gmail.com"
RUN yum -y update; yum clean all
RUN yum -y install sudo epel-release; yum clean all
RUN yum -y upgrade; yum clean all
RUN dnf install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-8-x86_64/pgdg-redhat-repo-latest.noarch.rpm
RUN dnf -qy module disable postgresql
RUN dnf install -y postgresql14-server
RUN chown -R postgres.postgres /var/lib/pgsql
RUN chmod +x /bin/postgresql-14-setup
RUN dnf -y install python3 
RUN pip3 install --upgrade pip
RUN yum -y install gcc
RUN pip3 install psycopg2-binary
RUN pip3 install patroni[etcd]

 RUN mkdir /data/patroni -p \
     && chown postgres.postgres /data/patroni \
     && chmod 777 /data/patroni 

COPY patroni.yml /etc/patroni.yml
RUN chown -v postgres.postgres /etc/patroni.yml
COPY patroni-run.sh ./entrypoint.sh
RUN chown -v postgres.postgres /entrypoint.sh

USER postgres

ENTRYPOINT ["bin/sh", "/entrypoint.sh"]
