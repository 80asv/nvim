#!/bin/bash

read -r -p "Are you sure you want to uninstall this neovim distribution? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo 'Uninstalling...'
        rm -rf ~/.config/nvim
        rm -rf ~/.local/share/nvim
        rm -rf ~/.cache/nvim
	echo 'Done!'
        ;;
    *)
        echo 'Uninstalling CANCELED' 
        exit 
        ;;
esac
