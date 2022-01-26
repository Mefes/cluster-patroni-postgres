FROM centos:latest
LABEL FullName="Vladimir Kadochnikov" 
LABEL Email="vova.kadoch1995@gmail.com"
RUN yum -y update; yum clean all
RUN yum -y install haproxy; yum clean all
COPY haproxy.cfg /etc/haproxy/haproxy.cfg
RUN mkdir /run/haproxy 
# COPY haproxy-run.sh entrypoint.sh
# If need monitoring haproxy uncomment this
# RUN wget http://hatop.googlecode.com/files/hatop-0.7.7.tar.gz \
#     tar xvf hatop-0.7.7.tar.gz \
#     cd hatop-0.7.7 \
#     install -m 755 bin/hatop /usr/local/bin \
#     hatop -s /var/run/haproxy.cmd
STOPSIGNAL SIGUSR1

# ENTRYPOINT ["entrypoint.sh"]
CMD ["haproxy", "-f", "/etc/haproxy/haproxy.cfg"]