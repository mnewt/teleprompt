function fish_prompt_import_theme
  set file_name $argv[1]
  set file_contents (cat $file_name)
  set key_value_regex '^([a-zA-Z_][a-zA-Z0-9_]*)(?:=(.*))?'

  for line in $file_contents
    if set key (string replace -fr "$key_value_regex" '$1' -- $line)
    and set value (string replace -fr "$key_value_regex" '$2' -- $line)
      set -g $key $value
    end
  end
end
