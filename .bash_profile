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
LIGHT_COLOR='base16-gruvbox-light-soft.yml'
DARK_COLOR='base16-gruvbox-dark-soft.yml'

# alias day="alacritty-colorscheme -C $COLOR_DIR -a $LIGHT_COLOR "
# alias night="alacritty-colorscheme -C $COLOR_DIR -a $DARK_COLOR "

# define the wd function
source '/home/jordan/git_repos/wd/wd'
