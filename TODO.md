# TODO

## Node

- use nvm (similar to rbenv) to manage node version installs going forward

## Extras

- move the android-sdk, android-studio and java to it's own role 'android'
- keep the 'cordova' role separate but create a playbook (either in prepd or in this repo) that includes both roles
- move boot2docker to the 'docker' role


## Virtualbox

- test installation on a linux laptop via prepd setup

## Go

- test that the binary installs properly; set a default version in defaults/main.yml
- finish the implementation of this role. it needs to set the GOLANG path and a few other things
