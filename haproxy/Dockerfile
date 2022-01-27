FROM centos:latest
LABEL FullName="Vladimir Kadochnikov" 
LABEL Email="vova.kadoch1995@gmail.com"
RUN yum -y update; yum clean all
RUN yum -y install haproxy; yum clean all
COPY haproxy.cfg /etc/haproxy/haproxy.cfg
RUN mkdir /run/haproxy 
# COPY haproxy-run.sh entrypoint.sh
STOPSIGNAL SIGUSR1

# ENTRYPOINT ["entrypoint.sh"]
CMD ["haproxy", "-f", "/etc/haproxy/haproxy.cfg"]