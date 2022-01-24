FROM postgres:latest
RUN apt-get update && apt-get --assume-yes install iputils-ping && apt-get install --assume-yes ssh && apt-get install --assume-yes net-tools && apt-get install --assume-yes gosu
COPY ./setup-slave.sh /setup-slave.sh
RUN chmod +x /setup-slave.sh
ENTRYPOINT ["/setup-slave.sh"]
CMD ["gosu","postgres","postgres"]