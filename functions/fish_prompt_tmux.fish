function fish_prompt_tmux
  set -q TMUX; and return 1
  set -l sessions (tmux ls 2>/dev/null); or return 1
  set -l session_count (echo "$sessions" | awk 'END{print NR}')
  test $session_count -gt 0; and echo -n -s $session_count
end
