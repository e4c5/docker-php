#!/bin/bash
sudo killall httpd
sudo killall nginx
sudo /etc/init.d/mysql stop
sudo docker-compose up --build -d
until nc -z localhost 80; do sleep 5; echo '.';  done
