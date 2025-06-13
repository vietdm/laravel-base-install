curl -fsSL https://get.docker.com -o get-docker.sh

sudo sh get-docker.sh && rm -f get-docker.sh

sudo groupadd docker

sudo usermod -aG docker $USER

sudo apt install jq

sudo curl -L https://github.com/docker/compose/releases/download/$(curl -s https://api.github.com/repos/docker/compose/tags | jq -r '.[0].name')/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
