[ -d ~/.scripts ] && export PATH="~/.scripts:$PATH"
export PATH="~/.local/bin:$PATH"
alias q='exit'


COLOR_DIR="$HOME/.config/alacritty/colors"
LIGHT_COLOR='base16-gruvbox-light-soft.yml'
DARK_COLOR='base16-gruvbox-dark-soft.yml'

alias day="alacritty-colorscheme -C $COLOR_DIR -a $LIGHT_COLOR "
alias night="alacritty-colorscheme -C $COLOR_DIR -a $DARK_COLOR "
