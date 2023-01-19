!#/bin/bash
sudo yum update -y
sudo yum install docker -y
sudo usermod -a -G docker nivia
id nivia
newgrp docker
sudo systemctl enable docker.service
sudo systemctl start docker.service