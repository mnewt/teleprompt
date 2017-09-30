function fish_prompt_rbenv
  set -q RBENV_SHELL; or return 1
  set -l rbenv_name (rbenv version-name)
  test $rbenv_name = "system"; and return 1
  printf $rbenv_name
end
