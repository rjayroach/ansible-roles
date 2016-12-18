# TODO

These TODOs are organized and titled by the role

## Docker

- Decide on whether to port dkr from the perx vagrant VM (or remove these aliases)


## Extras

- move the android-sdk, android-studio and java to it's own role 'android'
- keep the 'cordova' role separate but create a playbook (either in prepd or in this repo) that includes both roles
- move go and packer homebrew packages to the 'packer' role
- move boot2docker to the 'docker' role


## Virtualbox

- create this role
- it downloads and installs it to the laptop (mac or ubuntu)


## Packer

- test that it installs go (as a dependency) and packer from homebrew
- clones rjayroach/packer
- probably need to update rjayroach/packer to build machines in a specific way that also allows to create AMIs
- see if can automate posting boxes to atlas and pushing to S3
