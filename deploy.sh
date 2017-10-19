ssh -v -i "abioka-linux2.pem" ubuntu@ec2-35-177-32-171.eu-west-2.compute.amazonaws.com <<-'ENDSSH'
  docker system prune -af
  docker stack deploy -c docker-compose.yml abioka
  docker images
  docker ps
  docker service ls
ENDSSH
