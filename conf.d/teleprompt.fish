# set config_home "$XDG_CONFIG_HOME"
#
# if test -z "$config_home"
#     set config_home ~/.config
# end
#
# if test -z "$teleprompt_config"
#     set -g teleprompt_config "$config_home/teleprompt"
# end
#
# mkdir -p "$teleprompt_config"

# if test "$path"
#   test "$XDG_CONFIG_HOME"; or set XDG_CONFIG_HOME "$HOME/.config"
#   mkdir -p "$XDG_CONFIG_HOME"
#   ln -s "$path" "$XDG_CONFIG_HOME/teleprompt"
# end
# echo conf.d... path: $path

if not set -q __fish_prompt_hostname
  set -g __fish_prompt_hostname (hostname -s)
end
