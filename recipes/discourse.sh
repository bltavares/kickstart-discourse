source recipes/docker.sh
kickstart.context Discourse

kickstart.package.install git

mkdir -p /var/docker
[ -d /var/docker/.git ] || git clone https://github.com/discourse/discourse_docker.git /var/docker

cp files/standalone.yml /var/docker/containers/app.yml
(
cd /var/docker
git pull --rebase
./launcher bootstrap app
./launcher stop app
./launcher start app
)
