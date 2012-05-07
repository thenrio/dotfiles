. ~/.bash_aliases

# have a self bin path
export PATH=$HOME/bin:$PATH
# brew install nginx in /usr/local/sbin
export PATH=$PATH:/usr/local/sbin

# editor
export EDITOR='vim'

# prevent tar from creating ._ files
export COPYFILE_DISABLE=true

# sugar git prompt
. ~/.gitprompt.bash

# npm http://stackoverflow.com/questions/5919629/express-module-not-found-when-installed-with-npm
export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules
source /usr/local/lib/node_modules/npm/lib/utils/completion.sh

# java
export JAVA_HOME=`/usr/libexec/java_home`
# android
export ANDROID_HOME=~/bin/android-sdk-r15

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# python
export PYTHONSTARTUP=~/.python/pythonrc

# bash completion is broken!
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

###-begin-npm-completion-###
#
# npm command completion script
#
# Installation: npm completion >> ~/.bashrc  (or ~/.zshrc)
# Or, maybe: npm completion > /usr/local/etc/bash_completion.d/npm
#

COMP_WORDBREAKS=${COMP_WORDBREAKS/=/}
COMP_WORDBREAKS=${COMP_WORDBREAKS/@/}
export COMP_WORDBREAKS

if complete &>/dev/null; then
  _npm_completion () {
    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$COMP_CWORD" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           npm completion -- "${COMP_WORDS[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -F _npm_completion npm
elif compctl &>/dev/null; then
  _npm_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       npm completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _npm_completion npm
fi
###-end-npm-completion-###
