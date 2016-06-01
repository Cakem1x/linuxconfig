# The function below results in two vi state indicators, so just load the keybindings
# fish_vi_mode

# Setting this variable resulted in fish_user_key_bindings not being called, therefor call the method fish_vi_key_bindings in the fish_user_key_bindings function instead.
# set -g fish_key_bindings fish_vi_key_bindings

# This activates the mode indicator only
set -g __fish_vi_mode 1

# make the ssh-agent known to fish
set -x SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket"
