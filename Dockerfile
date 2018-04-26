FROM alpine:latest

RUN apk --update add bind

EXPOSE 53/tcp 53/udp

CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]
