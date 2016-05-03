function fish_user_key_bindings
  # this sets all the things needed for vi mode, also erases all other keybindings
  fish_vi_key_bindings
  # After that, we can add our own, custom keybindings
	bind \cs 'prepend_command sudo'
end
