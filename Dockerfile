FROM alpine:3.12

RUN apk add --update squid

CMD ["sh", "-c", "squid -f /etc/squid/squid.conf -zN 1 && squid -f /etc/squid/squid.conf -NYCd 1"]
