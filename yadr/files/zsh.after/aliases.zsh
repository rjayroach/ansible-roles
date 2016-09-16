
alias cv='cordova'
alias cvb='cordova build'
alias cvp='cordova plugin'

# Calls ruby file ~/bin/dkr
alias db='dkr build'
alias dp='dkr push'
alias dpl='dkr pull'

alias dr='dkr run'
alias drm='dkr remove'
alias ds='dkr start'
alias dsh='dkr shell'
alias dst='dkr stop'
alias dstr='dkr stop -r'


alias gwdsc='bin/seed'
alias seed='/home/vagrant/dev/play/platform/api-common/bin/seed.rb'
alias supg='sudo su - postgres'

alias gsu='git submodule update --remote --merge'

# NOTE: bes() only works if there is one line in the Procfile
bes() {
  E=`awk '{first = $1; $1 = ""; print $0; }' Procfile`
  eval $E
}

# Remove all docker instances
drma() {
  docker rm $(docker ps -a -q)
}

psrk() {
  ps aux | grep ruby | awk '{ print $2 }' | xargs kill -9
}

# dump a database named $1
pgd() {
  pg_dump $1 -n 'maiplay_pte_perx_retail_sandbox' | gzip -c > $1.sql.gz
}

srs() {
  z $1
  cd spec/dummy
  spring rails server -b 0.0.0.0 -p $2
}

export PERX_PLATFORM_ROOT=~/dev/play/platform
export PERX_RI_ROOT=~/dev/play/ri
export PERX_CONTAINER_ROOT=~/dev/play/container
