FROM alpine:latest
MAINTAINER igor@gajsin.name

RUN apk add --update openrc nfs-utils nfs-utils-openrc

COPY run.sh /run.sh
COPY exports /etc/exports

ENTRYPOINT ["/run.sh"]
