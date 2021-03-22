#!/bin/bash
# base setup script - do not run as sudo

GIT_USER='empty'    # '"JOHN DOE"'
GIT_EMAIL='empty'   # 'johndoe@mail.com'

if [ ! -f /usr/bin/micro ]; then
    echo "Installing micro..."
    curl https://getmic.ro | sudo bash
    sudo mv micro /usr/bin/
fi

if [ ! -f /usr/bin/batcat ]; then
    echo "Installing batcat..."
    sudo apt install bat
fi

if [ "$GIT_USER" != "empty" ] && [ "$GIT_EMAIL" != "empty" ]; then
    echo "Installing and setting up git-gui..."
    sudo apt install git-gui
    git config --global user.name "$GIT_USER"
    git config --global user.email "$GIT_EMAIL"
fi

for file in .{bashrc,bash_aliases,functions}; do
    echo "Moving dotfile: $file"
    cp -f "$file" ~/
done
