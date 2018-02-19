#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Use vi mode
set -o vi

# Use thefuck for command correction
eval $(thefuck --alias)

##########################
# Environment Variables: #
##########################
# export the env variable to use the ssh-agent started via systemd --user
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

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

#################################################
# Command Prompt customization; Requires:       #
# https://github.com/magicmonty/bash-git-prompt #
#################################################
GIT_PROMPT_ONLY_IN_REPO=0 # show the prompt everywhere
GIT_PROMPT_THEME=Solarized
source ~/devel/bash-git-prompt/gitprompt.sh
