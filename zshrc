# general config for omz

export ZSH="$HOME/.oh-my-zsh"      # path to omz installation
ZSH_THEME="spaceship"              # see https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
zstyle ':omz:update' mode auto     # let omz auto update
zstyle ':omz:update' frequency 7   # auto update frequency in days
ENABLE_CORRECTION="true"           # omz autocorrect
HIST_STAMPS="dd.mm.yyyy"           # date formatting
plugins=(macos)                    # see https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins
source $ZSH/oh-my-zsh.sh           # source zsh with the config settings

# config aliases to manage zshrc

alias vzsh="vi ~/.zshrc"
alias szsh="source ~/.zshrc"
alias czsh="cat ~/.zshrc"

# git aliases

alias gp="git push"
alias gam="git commit -am"
alias gpu="git pull"
alias gpuf=“git pull —ff-only” 
alias grhd="git reset --hard HEAD"
alias gs="git switch"

# shortcut aliases

alias c="clear"
alias lsa="ls -a"
alias tch="touch"
alias br="brew"

