if status --is-interactive
	set fish_function_path $fish_function_path "/usr/share/powerline/bindings/fish"
	powerline-setup
end

set -U fish_user_paths ~/bin

source ~/.profile_common
