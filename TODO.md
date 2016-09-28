# TODO

These TODOs are organized and titled by the role

## Extras

- move the android-sdk, android-studio and java to it's own role 'android'
- keep the 'cordova' role separate but create a playbook (either in prepd or in this repo) that includes both roles
- move go and packer homebrew packages to the 'packer' role
- move boot2docker to the 'docker' role

## Virtualbox

- create this role
- it downloads and installs it to the laptop (mac or ubuntu)

## Vagrant

- installs vagrant onto laptop
- installs the plugins

vagrant plugin install vagrant-vbguest      # keep your VirtualBox Guest Additions up to date
vagrant plugin install vagrant-cachier      # caches guest packages
vagrant plugin install vagrant-hostmanager  # updates /etc/hosts file when machines go up/down

## Packer

- installs go and packer from homebrew
- clones rjayroach/packer
- probably need to update rjayroach/packer to build machines in a specific way that also allows to create AMIs
- see if can automate posting boxes to atlas and pushing to S3
