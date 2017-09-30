function fish_prompt_hostname
  test "$SSH_CLIENT"; and echo "$__fish_prompt_hostname"
end
