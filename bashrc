#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

##########################
# Environment Variables: #
##########################
# export the env variable to use the ssh-agent started via systemd --user
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

##########################
# Command improvements:  #
##########################
# Use colored ls
alias l='ls --color=auto'
alias ls='ls --color=auto'
alias la='ls -la --color=auto'
alias ll='ls -l --color=auto'
# Use prettier ping command
alias ping='prettyping'
PS1='[\u@\h \W]\$ '
