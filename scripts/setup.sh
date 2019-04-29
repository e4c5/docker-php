#!/bin/bash
sudo killall httpd
sudo killall nginx
sudo /etc/init.d/mysql stop
sudo docker-compose up --build -d
IP=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' dockerphp_nginx_1)
until nc -z $IP 80; do sleep 5; echo '.';  done
echo $IP
phpunit scripts/test.php $IP
