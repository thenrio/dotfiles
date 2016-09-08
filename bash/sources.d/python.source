# -*- mode: bash -*-
# vi: set ft=sh :
export PYTHONSTARTUP=~/.python/pythonrc

export WORKON_HOME=${HOME}/.virtualenvs
export PROJECT_HOME=${HOME}/src/python

# XXX assumes nux is deb 
#
if systemis nux && test $( dpkg -l virtualenvwrapper 2> /dev/null | grep '^ii' | wc -l ) == 1; then
  . /etc/bash_completion.d/virtualenvwrapper
else
  # installed by pip
  . /usr/local/bin/virtualenvwrapper.sh
fi

