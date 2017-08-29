echo param value = $1
ssh -v -i "abioka-linux.pem" ec2-user@ec2-35-158-221-148.eu-central-1.compute.amazonaws.com <<-'ENDSSH'
  docker system prune -af
  env ABIOKA_TAG="$1" docker stack deploy -c docker-compose.yml abioka
  docker images
  docker ps
  docker service ls
ENDSSH
