#!/usr/bin/env bash
# vim: set ft=sh :
pass_dir=~/jobs/orange/beaumanoir/pass.d
if [ -d "$pass_dir" ]; then
  for f in $(ls "${pass_dir}"); do
    alias "${f}pass"="cat ${pass_dir}/${f} | tr -d '\n' | pbcopy"
  done
fi

alias cdbo="cd ~/src/beaumanoir"
