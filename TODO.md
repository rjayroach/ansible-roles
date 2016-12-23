# TODO

These TODOs are organized and titled by the role

## Docker

- Decide on whether to port dkr from the perx mac book projects/rjayroach/dkr


## Extras

- move the android-sdk, android-studio and java to it's own role 'android'
- keep the 'cordova' role separate but create a playbook (either in prepd or in this repo) that includes both roles
- move go and packer homebrew packages to the 'packer' role
- move boot2docker to the 'docker' role


## Virtualbox

- this is currently installed via homebrew but also needs to work on a linux host
- also to create a role that can be run when a developer clones an existing prepd project and needs to install deps on local machine


## Go

- test that the binary installs properly; set a default version in defaults/main.yml
- finish the implementation of this role. it needs to set the GOLANG path and a few other things


## Packer

- test that it installs go (as a dependency) and packer from homebrew
- clones rjayroach/packer
- probably need to update rjayroach/packer to build machines in a specific way that also allows to create AMIs
- see if can automate posting boxes to atlas and pushing to S3
