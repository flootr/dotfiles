export PATH=$HOME/.n/bin:$PATH
export ZSH=/Users/flootr/.oh-my-zsh
ZSH_THEME="robbyrussell"
ENABLE_CORRECTION="true"
plugins=(git npm osx)
source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8

alias vi=vim
alias vim=nvim
alias v=vim
alias git='hub'
alias g='git'
alias gh='hub browse'
alias ls='ls --color=auto --group-directories-first'
alias ll='ls -lph --color=auto --group-directories-first'
alias la='ls -alph --color=auto --group-directories-first'
alias s='gst --short'
alias ni="npm install"
alias reup="git fetch --prune && git rebase origin/master"
alias tnew='tmux new -s'
alias ta='tmux attach'

export VISUAL=vim
export PATH=/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:/usr/local/php5/bin:$PATH
export QUOTING_STYLE=literal
export EDITOR="nvim"

function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

export N_PREFIX="$HOME/.n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --hidden -g "!\.git/*"'
