#!/bin/bash
background() {
  # note that ~ expansion does not happen in string ( see Tilde Expansion in bash manual )
  local color=$1
  local file=~/.Xresources.d/$color
  if [ ! -e $file ]; then 
    echo "no such file: $file" >&2
    return 404
  fi
  
  ln -sfv ~/.Xresources.d/$color ~/.Xresources.d/colors
  xrdb -merge ~/.Xresources.d/colors

  sed -i "s/background=.*/background=$color/" ~/.vimrc
}
