alias ave='ansible-vault edit'

# TODO: move to role Postgres
alias supg='sudo su - postgres'

# TODO: move to role Git
alias gsu='git submodule update --remote --merge'

# NOTE: bes() only works if there is one line in the Procfile
bes() {
  E=`awk '{first = $1; $1 = ""; print $0; }' Procfile`
  eval $E
}

# TODO: move to role docker
# Remove all docker instances
drma() {
  docker rm $(docker ps -a -q)
}

# TODO: move to role app-development rails init
psrk() {
  ps aux | grep ruby | awk '{ print $2 }' | xargs kill -9
}

# TODO: move to role Postgres
# dump a database named $1
pgd() {
  pg_dump $1 -n 'maiplay_pte_perx_retail_sandbox' | gzip -c > $1.sql.gz
}

# TODO: move to role app-development rails init
srs() {
  z $1
  cd spec/dummy
  spring rails server -b 0.0.0.0 -p $2
}

# TODO: Move to the playbook that links tmux files
alias gwdsc='bin/seed'
alias seed='/home/vagrant/dev/play/platform/api-common/bin/seed.rb'

export PERX_PLATFORM_ROOT=~/dev/play/platform
export PERX_RI_ROOT=~/dev/play/ri
export PERX_CONTAINER_ROOT=~/dev/play/container
