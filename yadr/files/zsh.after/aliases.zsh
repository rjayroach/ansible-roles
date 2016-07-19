alias adc='spring rake app:db:clean'
alias adm='spring rake app:db:migrate'
alias admc='spring rake app:db:migrate:clean'
alias admcs='spring rake app:db:migrate:seed'
alias ads='spring rake app:db:seed'
alias adsc='spring rake app:db:seed:clean'
alias adsct='SEED_TENANT=true spring rake app:db:seed:clean'
alias adtp='spring rake app:db:test:prepare'

alias beg='bundle exec guard'

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

alias di='docker images'
alias dps='docker ps'

alias dc='spring rake db:clean'
alias dm='spring rake db:migrate'
alias dmc='spring rake db:migrate:clean'
alias dmcs='spring rake db:migrate:seed'
alias dsc='spring rake db:seed:clean'
alias dtp='spring rake db:test:prepare'

alias du='du -csh *'

alias fs='foreman start -e <()'

alias ggpl='spring stop; git checkout Gemfile.lock; git pull'
alias gwdsc='bin/seed'

alias gsu='git submodule update --remote --merge'

alias pss='ps -ef|grep spring'

alias rc='spring rails console'
alias rg='spring rails generate'
alias rgjc='spring rails generate jsonapi:controller'
alias rgjr='spring rails generate jsonapi:resource'
alias rgm='spring rails generate model'
alias rk='spring rake'
alias rkd='RAILS_ENV=test spring rake docs:generate'
alias rs='spring rspec'

alias seed='/home/vagrant/dev/play/platform/api-common/bin/seed.rb'

alias src='spring stop; rc'
alias ss='spring stop'
alias supg='sudo su - postgres'

alias tl='tmux list-sessions'
alias ta='tmux a -dt $1'

# Source and edit this file
alias sa='source ~/.zsh.after/aliases.zsh'
alias va='vi ~/.zsh.after/aliases.zsh'

alias v='vagrant'
alias vb='vagrant box'
alias vd='vagrant destroy'
alias vg='vagrant global-status'
alias vh='vagrant halt'
alias vp='vagrant provision'
alias vs='vagrant ssh'
alias vst='vagrant status'
alias vu='vagrant up'
alias vup='vagrant up --provision'


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
