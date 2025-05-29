export SHELL_VERBOSITY=0

# Configuration: oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

source $ZSH/oh-my-zsh.sh

# Configuration: composer
export PATH="$(composer config -g home)/vendor/bin:$PATH"

# Configuration: nvim
export PATH="$PATH:/opt/nvim-linux-x86_64-new/bin"

# Configuration: GPG
export GPG_TTY=$(tty)

# Configuration: xdebug
export XDEBUG_SESSION=1

# Configuration: nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Aliases: git
alias gd='git diff --output-indicator-new=" " --output-indicator-old=" "'

alias ga='git add'
alias gc='git commit'

alias gp='git push'
alias gu='git pull'

alias gl='git log --graph --all --pretty=format:"%C(magenta)%h %C(white) %an  %ar%C(blue)  %D%n%s%n"'
alias gb='git branch'
alias gch='git checkout'

alias gi='git init'
alias gcl='git clone'

alias gs='git status --short'

# Aliases: shopware
alias bstore='bin/build-storefront.sh'
alias badmin='bin/build-administration.sh'
alias bcomp='bin/build-js.sh'

alias cc='bin/console cache:clear'
alias ai='bin/console assets:install'
