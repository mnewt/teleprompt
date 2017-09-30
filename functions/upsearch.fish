function upsearch -d 'Search for a file in the current directory or a parent directory'
  set directory "$PWD"
  while test -n "$directory"
    if test -e "$directory/$argv[1]"
      echo -n -s "$directory/$argv[1]"
      return 0
    end
    set directory (string replace -r '\/[^\/]*$' '' "$directory")
  end
  return 1
end
