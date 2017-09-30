# Lifted from (https://github.com/fish-shell/fish-shell/issues/1326)
function append --no-scope-shadowing
  if test (count $argv) -ne 2
    echo append: Expected 2 arguments, (count $argv) received.
    return 1
  end
  set -l __fish_value $$argv[1]
  set $argv[1] "$__fish_value$argv[2]"
end
