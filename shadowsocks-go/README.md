# frp docker

## docker comman

First you need to create you own docker network (mynet)
```
docker network create --subnet=172.18.0.0/16 mynet
```
```
docker run --name frpc --restart=unless-stopped -itd  -v /home/wzj/myApp/frpc/frpc.ini:/frp/frpc.ini --net mynet --ip 172.18.0.100 test/frp frpc
docker run --name frpc_office --restart=unless-stopped -itd  -v /home/wzj/myApp/frp/frpc_office.ini:/frp/frpc.ini --net mynet --ip 172.18.0.101 test/frp frpc
docker run --name testredis --restart=unless-stopped -itd  --net mynet --ip 172.18.0.103 redis
```