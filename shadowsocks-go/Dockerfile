FROM golang:alpine as builder

WORKDIR /tmp
# RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
RUN apk add --no-cache git && \
    go get github.com/shadowsocks/shadowsocks-go/cmd/shadowsocks-server && \
    go get github.com/shadowsocks/shadowsocks-go/cmd/shadowsocks-local

FROM alpine
MAINTAINER jeremy <lookwzj@gmail.com>

ENV VERSION 0.26.0

WORKDIR /shadowsocks-go
COPY --from=builder /go /tmp/go
RUN mv /tmp/go/bin/* /usr/bin && \
    mv /tmp/go/src/github.com/shadowsocks/shadowsocks-go/config.json . && \
    rm -rf /tmp/*
COPY docker_entrypoint.sh .

EXPOSE 1080

ENTRYPOINT ["sh", "docker_entrypoint.sh"]
CMD ["server"]
