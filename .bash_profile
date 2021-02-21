[ -d ~/.scripts ] && export PATH="~/.scripts:$PATH"
export PATH="~/.local/bin:$PATH"
export PATH="~/.cask/bin:$PATH"

# aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias q='exit'


source ~/.config-local/paths.sh
source ~/.config-local/tools.sh
source ~/.private/aliases.sh
source ~/.machine-specific/env.sh

COLOR_DIR="$HOME/.config/alacritty/colors"
day_color='base16-tomorrow.yml'
dusk_color='base16-gruvbox-light-soft.yml'
evening_color='base16-gruvbox-dark-soft.yml'
night_color='base16-darktooth.yml'

# alias day="alacritty-colorscheme -C $COLOR_DIR -a $LIGHT_COLOR "
# alias night="alacritty-colorscheme -C $COLOR_DIR -a $DARK_COLOR "

# define the wd function
source '/home/jordan/git_repos/wd/wd'
alias day="alacritty-colorscheme -C $COLOR_DIR -a $day_color"
alias dusk="alacritty-colorscheme -C $COLOR_DIR -a $dusk_color"
alias evening="alacritty-colorscheme -C $COLOR_DIR -a $evening_color"
alias night="alacritty-colorscheme -C $COLOR_DIR -a $night_color"
