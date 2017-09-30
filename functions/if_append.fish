# Evaluate the expression. If it returns without error then append the result
# of the expression to the variable, formatted according to the printf string
# Adapted from (https://github.com/fish-shell/fish-shell/issues/1326)
# argv[1]: variable to append to
# argv[2]: expression to evaluate
# argv[3]: printf format string
# if_append variable expression "%s"
function if_append --no-scope-shadowing
  set -l result (eval "$argv[2]"); or return
  append "$argv[1]" "$__fish_value"(printf "$argv[3]" $result)
end
