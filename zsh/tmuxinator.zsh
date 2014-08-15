# from http://vikas-reddy.blogspot.de/2013/01/zsh-autocompletion-for-tmuxinator.html
_tmux_cmd() {
  # Constants
  local tmuxinator_configs_path
  tmuxinator_configs_path="$HOME/.tmuxinator"

  local a
  read -l a

  num_args=$(echo "$a" | awk '{print NF}')
  last_arg=$(echo "$a" | awk '{print $NF}')

  if [[ $num_args -le 1 ]]; then
    reply=(start open copy delete implode list doctor help version)
  else
    # whether to autocomplete project names
    if [[ -n "$(echo "start open copy delete" | grep -E "\<$last_arg\>")" ]]; then
      reply=(`ls "$tmuxinator_configs_path" | sed 's/\.yml$//' | sed -e :a -e '$!N; s/\n/ /; ta'`)
    fi
  fi
}

compctl -K _tmux_cmd tmuxinator
