#!/bin/sh

echo $
if [ "$1" = 'server' ];then
echo "run server"
    shadowsocks-server -c /shadowsocks-go/config.json
else
echo "run client"
    shadowsocks-local -c /shadowsocks-go/config.json
fi
