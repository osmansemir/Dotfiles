#!/usr/bin/bash

# Directory to copy dotfiles to
target_dir="/home/osmansemir/Desktop/Dotfiles/"
target_config="/home/osmansemir/Desktop/Dotfiles/.config/"


# Create the target directory if it doesn't exist
# mkdir -p "$target_dir"

# Copy all dotfiles to the target directory
cp -r /home/osmansemir/.zshrc /home/osmansemir/.gitconfig "$target_dir"
cp -r /home/osmansemir/.config/kitty /home/osmansemir/.config/nvim /home/osmansemir/.config/tmux /home/osmansemir/.config/starship.toml /home/osmansemir/.config/rofi /home/osmansemir/.config/alacritty "$target_config"




