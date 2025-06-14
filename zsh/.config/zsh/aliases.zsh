# aliases for bat a better cat
alias bat="batcat --color=always --style=numbers"

# aliases for eza which is a better ls 
alias ls="eza --icons --git"
alias l='eza -alg --color=always --group-directories-first --git'
alias ll='eza -aliSgh --color=always --group-directories-first --icons --header --long --git'
alias lt='eza -@alT --color=always --git'
alias llt="eza --oneline --tree --icons --git-ignore"
alias lr='eza -alg --sort=modified --color=always --group-directories-first --git'
