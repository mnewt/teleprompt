# Print a string with ANSI X3.64 colors
# Color formats:
# * 8 color (30-37 for foreground and 40-37 for background), e.g. '31'
# * 256 color (000-255 -- must use 3 digits with leading zeros), e.g. '001'
# * 24 bit color, e.g. RGB: 255;255;255, or hex: FFFFFF
# * Anything else is processed as a raw ANSI escape code and passed directly to \e[<arg>m
function with_color
  # $1: background color
  # $2: foreground color
  # remaining args: string to print
  set -l bg $argv[1]
  set -l fg $argv[2]
  set -e argv[1..2]

  switch (string length $bg)
    case 3
      set bg "48;5;$bg"
      set fg "38;5;$fg"
    case 6
      set bg (printf "48;2;%d;%d;%d" "0x"(string sub -s 1 -l 2 $bg) "0x"(string sub -s 3 -l 2 $bg) "0x"(string sub -s 5 -l 2 $bg))
      set fg (printf "38;2;%d;%d;%d" "0x"(string sub -s 1 -l 2 $fg) "0x"(string sub -s 3 -l 2 $fg) "0x"(string sub -s 5 -l 2 $fg))
    case 11
      set bg (printf "48;2;%d;%d;%d" (string sub -s 1 -l 3 $bg) (string sub -s 5 -l 3 $bg) (string sub -s 9 -l 3 $bg))
      set fg (printf "38;2;%d;%d;%d" (string sub -s 1 -l 3 $fg) (string sub -s 5 -l 3 $fg) (string sub -s 9 -l 3 $fg))
  end

  printf "\033["$bg"m\033["$fg"m%s\033[0m" "$argv"
end


# Print with color
# argv[1]: background color
# argv[2]: foreground color
# argv[3]: string to print
# function with_color
#   printf "%s%s%s%s" (set_color -b $argv[1]) (set_color $argv[2]) $argv[3] (set_color normal)
# end
