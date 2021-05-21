containers=$(docker ps | awk '{if(NR>1) print $NF}')

for container in $containers
do
  echo "Container: $container"
  ip=$(docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' "$container")
  echo "Mounted network: $ip"
  echo ================================
done