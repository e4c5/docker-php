# Wait for the port to be available

MYSQL_CONTAINER=`docker ps --format '{{.Names}}' --filter name=mysql`

until nc -z $(sudo docker inspect --format='{{.NetworkSettings.IPAddress}}' $MYSQL_CONTAINER) 3306
do
    sleep 0.5
done
