FROM centos:latest

RUN yum -y install --setopt=tsflags=nodocs epel-release &&\
    yum -y update --setopt=tsflags=nodocs &&\
    yum -y install nginx &&\
    yum clean all

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 8182

STOPSIGNAL SIGQUIT

CMD ["nginx", "-g", "daemon off;"]
