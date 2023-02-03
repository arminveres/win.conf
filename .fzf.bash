# Setup fzf
# ---------
if [[ ! "$PATH" == */c/Users/av/gitprojs/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/c/Users/av/gitprojs/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/c/Users/av/gitprojs/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/c/Users/av/gitprojs/fzf/shell/key-bindings.bash"
