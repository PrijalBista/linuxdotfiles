#! /bin/bash

cp ~/.config/i3/config ~/dotfileupload/dotfiles/i3/
cp ~/.vimrc ~/dotfileupload/dotfiles/vimrc/
cp ~/.Xresources ~/dotfileupload/dotfiles/urxvt/

git add .

read -p "Enter the msg for git commit " msg

git commit -m "$msg"

git push origin master

echo "Successfully updated and uploaded"

exit


