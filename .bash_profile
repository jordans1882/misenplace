[ -d ~/.scripts ] && export PATH="~/.scripts:$PATH"
export PATH="~/.local/bin:$PATH"
export PATH="~/.cask/bin:$PATH"

# aliases
alias ll='lsd -alF'
alias la='lsd -A'
alias l='lsd -CF'
alias ls='lsd'
alias q='exit'


if [ -f ~/.config-local/paths.sh ]; then
    . ~/.config-local/paths.sh
fi

if [ -f ~/.config-local/tools.sh ]; then
    . ~/.config-local/tools.sh
fi

if [ -f ~/.private/aliases.sh ]; then
    . ~/.private/aliases.sh
fi

if [ -f ~/.machine-specific/env.sh ]; then
    . ~/.machine-specific/env.sh
fi


COLOR_DIR="$HOME/.config/alacritty/colors"
day_color='base16-tomorrow.yml'
dusk_color='base16-gruvbox-light-soft.yml'
evening_color='base16-gruvbox-dark-soft.yml'
night_color='base16-darktooth.yml'

GTK_THEME=Adwaita:dark

# alias day="alacritty-colorscheme -C $COLOR_DIR -a $LIGHT_COLOR "
# alias night="alacritty-colorscheme -C $COLOR_DIR -a $DARK_COLOR "

# define the wd function
source '/home/jordan/git_repos/wd/wd'
alias day="alacritty-colorscheme -C $COLOR_DIR -a $day_color"
alias dusk="alacritty-colorscheme -C $COLOR_DIR -a $dusk_color"
alias evening="alacritty-colorscheme -C $COLOR_DIR -a $evening_color"
alias night="alacritty-colorscheme -C $COLOR_DIR -a $night_color"

# eval $(luarocks path)

#export LUA_PATH='/home/jordan/.luarocks/bin:$PATH'
export LUA_PATH='/usr/share/lua/5.4/?.lua;/usr/share/lua/5.4/?/init.lua;/usr/lib/lua/5.4/?.lua;/usr/lib/lua/5.4/?/init.lua;./?.lua;./?/init.lua;/home/jordan/.luarocks/share/lua/5.4/?.lua;/home/jordan/.luarocks/share/lua/5.4/?/init.lua'
export LUA_CPATH='/usr/lib/lua/5.4/?.so;/usr/lib/lua/5.4/loadall.so;./?.so;/home/jordan/.luarocks/lib/lua/5.4/?.so'
export PATH="~/.luarocks/bin:$PATH"

#  # If on console, change cursor colour according to
#  # /usr/src/linux/Documentation/VGA-softcursor.txt
#  # Reset using echo -e '\033[?2c'
#  if [ $TERM = 'linux' -a $SHELL == '/bin/bash' ] ; then
#      echo -e '\033[?17;0;64c'
#  fi



eval "$(starship init bash)"



