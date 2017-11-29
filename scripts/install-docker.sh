DOCKER_VERSION=17.09.0
DOCKER_PACKAGE=docker-ce_$DOCKER_VERSION~ce-0~ubuntu_amd64.deb

curl -LO https://download.docker.com/linux/ubuntu/dists/zesty/pool/stable/amd64/"$DOCKER_PACKAGE"
sudo dpkg -i $DOCKER_PACKAGE
rm $DOCKER_PACKAGE