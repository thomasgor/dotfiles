#Add fzf to path if availale in $HOME/.fzf/bin
if [[ -d "$HOME/.fzf/bin" ]]; then
  export PATH="$HOME/.fzf/bin:$PATH"
fi

source <(fzf --zsh)


export FZF_DEFAULT_OPTS='--preview "batcat -n --color=always {}" --height 50% --border --layout reverse --info inline --walker-skip ".git,node_modules,target"'
export FZF_CTRL_R_OPTS=" --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort' --color header:italic --header 'Press CTRL-Y to copy command into clipboard' --preview ''"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"

