#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Use vi mode
set -o vi

# Use thefuck for command correction
eval $(thefuck --alias)

############
# Aliases: #
############
# Use colored ls
alias l='ls --color=auto'
alias ls='ls --color=auto'
alias la='ls -la --color=auto'
alias ll='ls -l --color=auto'
# Use prettier ping command
alias ping='prettyping'
# get up one dir quickly
alias ..='cd ..'

################################
# Command Prompt customization #
################################
# colors and git for the prompt
source ~/.git-prompt.sh
if [ -n "$BASH_VERSION" ]; then
  export GIT_PS1_SHOWDIRTYSTATE=true
  export GIT_PS1_SHOWUNTRACKEDFILES=true
  export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
fi
