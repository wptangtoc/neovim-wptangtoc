#!/bin/bash


OUTPUT=$(cat /etc/*release)
if  echo $OUTPUT | grep -q "AlmaLinux\|Rocky Linux" ; then
	sudo dnf install epel-release -y
	sudo dnf install ripgrep fzf neovim nodejs git -y
elif echo $OUTPUT | grep -q "Ubuntu\|debian" ; then
	sudo apt install ripgrep fzf neovim nodejs git -y
else
	echo "Hiện tại neovim wptangtoc không hỗ trợ với hệ điều hành $(hostnamectl | grep System | cut -f2 -d':'|sed 's/^ //g') của bạn"
	echo "Muốn sử dụng neovim wptangtoc vui lòng sử dụng hệ điều hành (Almalinux|Rocky linux| Ubuntu|debian)"
	rm -f neovim-wptangtoc.sh
	exit
fi


wget https://github.com/wptangtoc/neovim-wptangtoc/raw/refs/heads/main/neovim.zip
mkdir -p ~/.config/nvim
unzip -o neovim.zip -d ~/.config/nvim
rm -f neovim-wptangtoc.sh

#cai vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
rm -f neovim.zip
ln -f /usr/bin/nvim /usr/bin/vim
clear
echo '====================================='
echo 'Hoàn tất cài đặt neovim'
echo "trên terminal bạn hãy gõ lệnh: vim ."
echo "Bạn cứ ấn enter đến khi nào có ấn được nút :"
echo "rồi sau đó gõ=> :PlugInstall"
echo "rồi tiếp tục gõ=> :CocInstall coc-phpls coc-css coc-html"
echo "Để thoát ra gõ=> :q! (ấn khi nào thoát ra thì thôi)"
echo "Hy vọng phần mềm này sẽ giúp bạn cải thiện năng suất làm việc"
