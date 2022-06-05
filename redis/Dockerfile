FROM centos:centos7.9.2009
ENV REDIS_VERSION=5.0.2
COPY install.sh /tmp/install.sh
RUN chmod +x /tmp/install.sh
RUN /tmp/install.sh ${REDIS_VERSION}
EXPOSE 6379
ENTRYPOINT ["sh", "-c", "/opt/apps/redis-${REDIS_VERSION}/src/redis-server", "/opt/apps/redis-${REDIS_VERSION}/redis.conf"]

