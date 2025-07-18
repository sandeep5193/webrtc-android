## start ec2 t3.xlarge instance with at least 60GB storage, use Ubuntu 24.04.

for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done

sudo apt-get update

sudo apt-get install ca-certificates curl

sudo install -m 0755 -d /etc/apt/keyrings

sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc

sudo chmod a+r /etc/apt/keyrings/docker.asc

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null


sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo docker run hello-world

## TODO: need to do this?? export WEBRTC_COMPILE_ARGS="symbol_level=1 enable_libaom=false"

## copy cli.sh, build-final.sh, Dockerfile from https://github.com/sandeep5193/webrtc-build-docker

sudo chmod +x cli.sh 

sudo chmod +x build-final.sh 

mkdir build-tools

mv Dockerfile build-tools/

sudo ./cli.sh build-tools

## refer https://chromiumdash.appspot.com/branches for choosing branch head. below is for M134.
sudo ./build-final.sh branch-heads/6998
