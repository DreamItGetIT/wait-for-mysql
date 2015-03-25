#!/bin/bash

echo "Waiting for mysql"
until mysql -h"$MYSQL_PORT_3306_TCP_ADDR" -P"$MYSQL_PORT_3306_TCP_PORT" -uroot -p"$MYSQL_ENV_MYSQL_ROOT_PASSWORD" &> /dev/null
do
  printf "."
  sleep 1
done

echo -e "\nmysql ready"
