function git-current-branch() {
  git rev-parse --abbrev-ref HEAD 2>/dev/null
}

function git-ps1() {
  if git-current-branch >/dev/null; then
    echo -n "[$(git-current-branch)"
    if git status 2>/dev/null | tail -1 | grep -q -v "^nothing to commit"; then 
      echo -n "*"
    fi
    echo -n "]"
  fi
}
export PS1="\[\033[1;33m\]\w\[\033[0m\] \$(git-ps1)\$ "
