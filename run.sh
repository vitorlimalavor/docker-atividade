#!/bin/bash

docker run -it -d --name mysql -e MYSQL_ROOT_PASSWORD=vitor -p 3306:3306  mysql:latest

docker run -it -d --name nginx -p 80:80 nginx:latest

IP_MYSQL=$(docker inspect mysql | grep IPAddress | tail -1 | awk '{print $2}')
IP_NGINX=$(docker inspect nginx | grep IPAddress | tail -1 | awk '{print $2}')

echo "ip mysql: $IP_MYSQL "
echo "ip ngnix: $IP_NGINX "
