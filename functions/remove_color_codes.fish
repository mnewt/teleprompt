# Remove ANSI Color Escape Sequences. requires `shopt -s extglob`
function remove_color_codes
  string replace -ra "(\033[^m]+m)|(\017)" "" "$argv"
end
