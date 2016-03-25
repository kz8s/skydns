FROM kz8s/golang
MAINTAINER jono@kz8s.io

RUN set -eux &&\
 go get github/skynetservices/skydns &&\
 go install github/skynetservices/skydns
  
EXPOSE 53 53/udp

ENTRYPOINT [ "/go/bin/skydns" ]
