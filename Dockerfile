FROM alpine:latest
MAINTAINER Nick Lang <nick@nicklang.com>

RUN apk add --update bash git php php-mcrypt php-dev php-curl php-cli php-json php-apcu && rm -rf /var/cache/apk/*

RUN git clone https://github.com/phacility/libphutil.git /opt/libphutil
RUN git clone https://github.com/phacility/arcanist.git /opt/arcanist

ENV PATH /opt/arcanist/bin/:$PATH
# RUN source /opt/arcanist/resources/shell/bash-completion
VOLUME ["/data", "/arcanist"]
WORKDIR "/data"

ENTRYPOINT ["/opt/arcanist/bin/arc", "--arcrc-file=/arcanist/arcrc"]
CMD ["help"]
