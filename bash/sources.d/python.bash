# -*- mode: bash -*-
# vi: set ft=sh :
export PYTHONSTARTUP=~/.python/pythonrc

export WORKON_HOME=${HOME}/.virtualenvs
export PROJECT_HOME=${HOME}/src/python

# installed by pip
[ -f /usr/local/bin/virtualenvwrapper.sh ] && . /usr/local/bin/virtualenvwrapper.sh
