#!/bin/sh

# Set /bin/bash as default shell
echo "Setting bash as default shell"
chsh -s /bin/bash
echo "✅ Done"

# [Install] tmux, vim, lolcat, etc.
sudo apt install lolcat tmux vim -y
echo "✅ Done"

# [Install] Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" -y
echo "✅ Done"

# [Install] VimVundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "✅ Done"

# [Install] 
echo "✅ Done"
