#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

##########################
# Environment Variables: #
##########################
# export the env variable to use the ssh-agent started via systemd --user
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
# Add custom scripts to path
export PATH="${PATH}:${HOME}/devel/linuxconfig/scripts"
