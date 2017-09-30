function fish_prompt_username
  test "$SSH_CLIENT"; and echo $USER
end
