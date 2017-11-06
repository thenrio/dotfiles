# Setup fzf
# ---------
if [[ ! "$PATH" == */home/thenrio/.fzf/bin* ]]; then
  export PATH="$PATH:/home/thenrio/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/thenrio/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/thenrio/.fzf/shell/key-bindings.bash"

