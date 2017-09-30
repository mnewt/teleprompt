function fish_prompt_node
  # detect package.json
  # print "name" field
  set package (upsearch package.json); or return 1
  set -l name (cat "$package" | string match -r '(?<="name":\s")[\w\d]+')
  echo -n -s "$name[1]"
end
