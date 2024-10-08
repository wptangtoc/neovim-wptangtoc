#!/bin/bash

if [[ -d ~/config/nvim ]];then
echo "Bạn chưa cài neovim vì vậy không thể xoá"
exit;
fi

OUTPUT=$(cat /etc/*release)
if  echo $OUTPUT | grep -q "AlmaLinux\|Rocky Linux" ; then
	sudo dnf remove epel-release -y
	sudo dnf remove ripgrep fzf neovim nodejs git -y
elif echo $OUTPUT | grep -q "Ubuntu\|debian" ; then
	sudo apt remove ripgrep fzf neovim nodejs git -y
else
	echo "Hiện tại neovim wptangtoc không hỗ trợ với hệ điều hành $(hostnamectl | grep System | cut -f2 -d':'|sed 's/^ //g') của bạn"
	echo "Muốn sử dụng neovim wptangtoc vui lòng sử dụng hệ điều hành (Almalinux|Rocky linux| Ubuntu|debian)"
	rm -f neovim-wptangtoc.sh
	exit
fi

cd
rm -rf ~/config/nvim
rm -rf $HOME/.local/share/nvim
rm -f neovim-wptangtoc.sh
clear
echo '====================================='
echo 'Hoàn tất xoá neovim'
