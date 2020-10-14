#! /bin/bash

cwd=$(pwd)

# Setup symbolic links
if [[ ! -d ~/.config/awesome ]]; then 
  ln -s $cwd/.config/awesome ~/.config/awesome
fi

if [[ ! -d ~/.config/alacritty ]]; then 
  ln -s $cwd/.config/alacritty ~/.config/alacritty
fi

if [[ ! -d ~/.config/nvim ]]; then 
  ln -s $cwd/.config/nvim ~/.config/nvim
fi

if [[ ! -f ~/.bashrc ]]; then 
  ln -s $cwd/.bashrc ~/.bashrc
fi

if [[ ! -d ~/.scripts ]]; then 
  ln -s $cwd/.scripts ~/.scripts
fi
  
if [[ ! -f ~/.bash_profile ]]; then 
  ln -s $cwd/.bash_profile ~/.bash_profile
fi

if [[ ! -f ~/.tmux.conf ]]; then 
  ln -s $cwd/.tmux.conf ~/.tmux.conf
fi
