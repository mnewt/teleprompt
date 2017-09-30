function fish_prompt_vagrant
  # detect Vagrantfile
  # print .vagrant/machines/$machine_name
  set vagrantfile (upsearch Vagrantfile); or return 1
  command ls 2>/dev/null (string replace -r '\/[^\/]*$' "/.vagrant/machines/" $vagrantfile)
   or echo -n -s "*"
end
