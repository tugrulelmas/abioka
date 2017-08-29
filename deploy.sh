ssh -v -i "abioka-linux.pem" ec2-user@ec2-35-158-221-148.eu-central-1.compute.amazonaws.com <<-'ENDSSH'
  docker stack rm abioka
  docker rmi -f tugrulelmas/abioka-com
  docker stack deploy -c docker-compose.yml abioka
  docker images
  docker ps
  docker service ls
ENDSSH
