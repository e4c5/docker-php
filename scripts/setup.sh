#!/bin/bash
sudo killall httpd
sudo killall nginx
sudo /etc/init.d/mysql stop
sudo docker-compose up --build -d
sleep 9
sudo docker ps
#IP=$(sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' dockerphp_nginx_1)
#echo $IP
sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' dockerphp_php_1
#sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' dockerphp_nginx_1
#until nc -z localhost 80; do sleep 5; echo '.';  done

phpunit scripts/test.php localhost
