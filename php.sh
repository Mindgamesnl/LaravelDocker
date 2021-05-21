#!/bin/sh
containers=$(docker ps | awk '{if(NR>1) print $NF}')

for container in $containers
do
  if [[ $container == *"fpm"* ]]; then
    echo "Attaching to $container"
    docker exec -it $container sh
  fi
done