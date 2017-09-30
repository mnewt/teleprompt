function fish_prompt_virtualenv
  set -q VIRTUAL_ENV; or return 1
  echo -n -s (basename $VIRTUAL_ENV)
end
