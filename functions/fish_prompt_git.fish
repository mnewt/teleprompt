function fish_prompt_git
  # detect .git directory
  # print current branch; add an asterisk if there are uncommitted changes
  set -l gitdir (string replace "/.git" "" (upsearch .git)); or return 1
  echo -n -s (cat "$gitdir/.git/HEAD" | string match -r '[^\/]*$')
  count (git -C "$gitdir" status --porcelain) >/dev/null
    and echo -n -s '*'
  return 0
end
