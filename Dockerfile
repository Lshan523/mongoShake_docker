FROM ubuntu:20.04
MAINTAINER Sea <lshan523@163.com>

COPY mongo-shake-v2.6.5/  /mongo-shake-v2.6.5/
COPY docker-entrypoint.sh  /

WORKDIR /mongo-shake-v2.6.5

EXPOSE 9100
EXPOSE 9101




# ./collector.linux -conf=./collector.conf -verbose 2


ENTRYPOINT ["bash", "/docker-entrypoint.sh"]
