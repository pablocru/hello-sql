#!/bin/bash

LOCAL_PORT=3306

echo
docker run -d \
  --name hello-sql \
  -p $LOCAL_PORT:3306 \
  -e MYSQL_ROOT_PASSWORD=super_secure_password_@1234 \
  mysql:latest \
  --character-set-server=utf8mb4 \
  --collation-server=utf8mb4_unicode_ci

echo
docker ps

echo
echo "URL: jdbc:mysql://localhost:/$LOCAL_PORT?useSSL=false&allowPublicKeyRetrieval=true"
