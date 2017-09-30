# Adapted from (https://stackoverflow.com/a/3498912)
function fish_prompt_short_directory
  set -l length 20
  set -l p (string replace "$HOME" "~" "$PWD")
  set -l b
  while test "$p"; and test (string length "$b$p") -gt $length
    set b "$b"(string match -r '^\/?\.?.' -- $p)
    set p (string replace -r '^\/?\.?[^\/]+' '' -- $p)
  end
  echo "$b$p"
end
