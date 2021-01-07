#!/bin/sh

eval $(egrep -v '^#' .env | xargs)
set -eu

echo "Start Docker --------------------------------------"
docker-compose up -d

echo "Preparing Wordmove --------------------------------"
docker exec -w /home/ -it ${PROJECT_NAME}_wordmove /home/ssh-add.sh
