set -g fish_prompt_status_bg 001
set -g fish_prompt_status_fg 255
set -g fish_prompt_status_format ' %i '
set -g fish_prompt_username_bg 003
set -g fish_prompt_username_fg 000
set -g fish_prompt_username_format ' %s '
set -g fish_prompt_hostname_bg 002
set -g fish_prompt_hostname_fg 000
set -g fish_prompt_hostname_format ' %s '
# set -g fish_prompt_git_bg E6623D
set -g fish_prompt_git_bg 167
# set -g fish_prompt_git_fg F1F1E9
set -g fish_prompt_git_fg 230
set -g fish_prompt_git_format ' %s '
set -g fish_prompt_rbenv_bg 207
set -g fish_prompt_rbenv_fg 255
set -g fish_prompt_rbenv_format ' %s '
set -g fish_prompt_virtualenv_bg 027
set -g fish_prompt_virtualenv_fg 255
set -g fish_prompt_virtualenv_format ' %s '
set -g fish_prompt_node_bg 024
set -g fish_prompt_node_fg 255
set -g fish_prompt_node_format ' %s '
set -g fish_prompt_clojure_bg 055
set -g fish_prompt_clojure_fg 255
set -g fish_prompt_clojure_format ' %s '
set -g fish_prompt_vagrant_bg 190
set -g fish_prompt_vagrant_fg 000
set -g fish_prompt_vagrant_format ' %s '
set -g fish_prompt_directory_bg 006
set -g fish_prompt_directory_fg 016
set -g fish_prompt_directory_format ' %s '
set -g fish_prompt_jobs_bg 240
set -g fish_prompt_jobs_fg 007
set -g fish_prompt_jobs_format ' jobs: %s '
set -g fish_prompt_tmux_bg 244
set -g fish_prompt_tmux_fg 000
set -g fish_prompt_tmux_format ' tmux: %s '
set -g fish_prompt_datetime_bg 252
set -g fish_prompt_datetime_fg 232
set -g fish_prompt_datetime_format ' %s '
set -g fish_prompt_line_bg 237
set -g fish_prompt_line_fg 237
set -g fish_prompt_line_format '                                                                                                                                                                                                                                                      '
set -g fish_prompt_prompt '\n'(set_color -o)'> '(set_color normal)

set -g fish_prompt_left status username hostname git rbenv virtualenv node clojure vagrant directory
set -g fish_prompt_right jobs tmux datetime
