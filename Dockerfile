FROM nginx:1.13.1-alpine
MAINTAINER nginx Docker Maintainers

ADD https://raw.githubusercontent.com/zf724/docker-mosquitto/master/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

VOLUME /data

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]
