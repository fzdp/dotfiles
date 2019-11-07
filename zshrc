# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

ZSH_THEME="dracula"
plugins=(git title-tab catimg git-extras z extract zsh-syntax-highlighting zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

ZEL_RPROMPT_INDENT=0
export LANG=en_US.UTF-8
export EDITOR="vi"
export TERM="xterm-256color"
unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1

# nvm
export NVM_DIR=$(realpath "$HOME/.nvm")
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# java
JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-10.jdk/Contents/Home"
CLASS_PATH="$JAVA_HOME/lib"

# alias
alias h=cheat
alias vi=nvim
alias be="bundle exec"

alias setprojenv="python3 -m venv .venv && source .venv/bin/activate"
alias useprojenv="deactivate 2>/dev/null; source .venv/bin/activate"

alias ssr_on="export http_proxy=http://127.0.0.1:1087;export https_proxy=http://127.0.0.1:1087"
alias ssr_off="unset http_proxy;unset https_proxy"

export PATH="$PATH:$JAVA_HOME/bin"
