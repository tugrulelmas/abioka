ssh -o MACs=hmac-sha1 -vvvl -i "abioka-linux.pem" ec2-user@ec2-35-158-221-148.eu-central-1.compute.amazonaws.com <<-'ENDSSH'
  scp -v docker-compose.yml ec2-user@ec2-35-158-221-148.eu-central-1.compute.amazonaws.com:/home/ec2-user
  ls
  docker stack rm abioka
  docker stack deploy -c docker-compose.yml abioka
ENDSSH
