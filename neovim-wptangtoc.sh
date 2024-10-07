#!/bin/bash
if $(cat /etc/*release | grep -q "Ubuntu") ; then
	sudo apt install ripgrep fzf neovim nodejs -y
else
	sudo dnf install epel-release -y
	sudo dnf install ripgrep fzf neovim nodejs -y
fi
cd
wget https://github.com/wptangtoc/neovim-wptangtoc/raw/refs/heads/main/neovim.zip
mkdir -p ~/.config/nvim
unzip -o neovim.zip -d ~/.config/nvim
rm -f neovim-wptangtoc.sh

#cai vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
rm -f neovim.zip
ln -f /usr/bin/nvim /usr/bin/vim
echo 'Hướng dẫn Cài đặt install neovim'
echo "trên terminal bạn hãy gõ lệnh: vim . rồi sau đó gõ :PlugInstall"
echo "rồi tiếp tục gõ :CocInstall coc-phpls coc-css coc-html"
