FROM alpine

RUN apk --update add socat && \
    rm -rf /var/cache/apk/* && \
    rm -rf /root/.cache

ENV LISTEN_PORT 80

CMD socat TCP-LISTEN:"$LISTEN_PORT",fork TCP:"$SERVER_ADDR":"$SERVER_PORT"
