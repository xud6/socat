FROM alpine

RUN apk --update add socat && \
    rm -rf /var/cache/apk/* && \
    rm -rf /root/.cache

CMD socat TCP-LISTEN:80,fork TCP:"$SERVER_ADDR":"$SERVER_PORT"
