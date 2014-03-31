source recipes/docker.sh
kickstart.context Discourse

install_dir=/var/docker

kickstart.package.install git

mkdir -p $install_dir
[ -d $install_dir/.git ] || git clone https://github.com/discourse/discourse_docker.git $install_dir

install_dir=$install_dir \
  kickstart.file.template files/standalone.yml.template > $install_dir/containers/app.yml
(
  cd $install_dir
  git pull --rebase
  ./launcher bootstrap app
  ./launcher stop app
  ./launcher start app
)
