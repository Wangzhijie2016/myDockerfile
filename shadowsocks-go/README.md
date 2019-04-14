
## usage

server
```
docker run -d -v local_path/client.json:/shadowsocks-go/config.json -p 1080:1080 lookwzj/shadowsocks-go server
```

client
```
docker run -d -v local_path/client.json:/shadowsocks-go/config.json -p 1080:1080 lookwzj/shadowsocks-go server
```
