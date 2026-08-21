export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="muse"

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE

plugins=(
  dnf
  git
  gh
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source <(fzf --zsh)
eval $(thefuck --alias)

# zsh
alias zshconfig="code $HOME/.zshrc"
alias zshreload="source $HOME/.zshrc"

# General
alias \$=""
alias ls="ls -lah --color=auto"
alias untar="tar -xvf"

# Tmux
alias ta="tmux attach"
alias td="tmux detach"
alias tr="tmux source-file ~/.tmux.conf && tmux attach" # for reloading sessions with tmux-resurrect
alias tns="tmux new-session -s"
