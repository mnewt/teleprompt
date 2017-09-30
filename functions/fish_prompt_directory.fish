function fish_prompt_directory
  echo -n -s (string replace "$HOME" "~" "$PWD")
end
