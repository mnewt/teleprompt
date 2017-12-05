function fish_prompt -d 'Write out a fancy prompt'
  set -g fish_prompt_last_status $status

  set -q fish_prompt_prompt; or echo No teleprompt theme set! Oh no!

  set -l left_prompt
  set -l right_prompt
  set -l left_keys
  set -l left_values
  set -l right_keys
  set -l right_values

  # Obtain prompt values
  for key in $fish_prompt_left
    if set -l value (eval fish_prompt_$key)
      set left_keys $left_keys $key
      set -l format_key fish_prompt_$key"_format"
      set left_values $left_values (printf $$format_key "$value")
    end
  end

  for key in $fish_prompt_right
    if set -l value (eval fish_prompt_$key)
      set right_keys $right_keys $key
      set -l format_key fish_prompt_$key"_format"
      set right_values $right_values (printf $$format_key "$value")
    end
  end

  # Figure out the length and whether everything will fit on one line
  set -l length 0
  for s in $left_values $right_values
    set length (math $length + (string length "$s"))
  end

  # COLUMNS is not set to a value the first time after login
  test -z "$COLUMNS"; and set cols $COLUMNS; or set cols (tput cols)
  set -l padding (math $cols - $length)

  # Try to shorten output if it's too wide to fit on one line
  if test $padding -lt 0
    for i in (seq 1 (count "$left_keys"))
      set -l f fish_prompt_short_$left_keys[$i]
      if functions -q $f; and set -l value (eval $f)
        set -l old_value $left_values[$i]
        set left_values[$i] $value
        set padding (math $padding + (string length "$old_value") - (string length "$value"))
        test $padding -ge 0; and break
      end
    end
    if test $padding -lt 0
      set right_keys
      set padding (math $padding + (string length "$right_values"))
    end
    if test $padding -lt 0
      # Tiny prompt for tiny screens
      set left_keys directory
      set left_values (eval fish_prompt_short_directory)
      set padding (math $cols - (string length "$left_values"))
    end
  end


  # Print out left side
  for i in (seq 1 (count $left_keys))
    set -l bg_key fish_prompt_$left_keys[$i]_bg
    set -l fg_key fish_prompt_$left_keys[$i]_fg
    with_color $$bg_key $$fg_key "$left_values[$i]"
  end

  # Pad so that left and right sides are justified and take up the whole line
  set -l prompt_line (printf "%."$padding"s" "$fish_prompt_line_format")
  with_color "$fish_prompt_line_bg" "$fish_prompt_line_fg" "$prompt_line"

  # Print out right side
  for i in (seq 1 (count $right_keys))
    set -l bg_key fish_prompt_$right_keys[$i]_bg
    set -l fg_key fish_prompt_$right_keys[$i]_fg
    with_color $$bg_key $$fg_key "$right_values[$i]"
  end

  functions -q iterm2_preexec; and iterm2_preexec

  printf $fish_prompt_prompt
end
