#!/bin/bash

# bash
if [ ! -L ~/.bashrc ]; then
    if [ ! -f ~/.bashrc ]; then
        mv ~/.bashrc ~/bashrc_old
        echo "Moving existing bashrc to ~/.bashrc_old"
    fi
    ln -s ./.bashrc ~/.bashrc
fi

# nvim
if [ ! -L ~/.config/nvim/init.vim ]; then
    if [ ! -f ~/.config/nvim/init.vim ]; then
        mv ~/.config/nvim/init.vim ~/.config/nvim/init_old.vim
        echo "Moving existing init.vim to ~/.config/nvim/init_old.vim"
    fi
    ln -s ./.config/nvim/init.vim ~/.config/nvim/init.vim
fi
