function fish_prompt_status
  test $fish_prompt_last_status -eq 0; and return 1
  echo $fish_prompt_last_status
end
