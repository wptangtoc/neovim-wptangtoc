"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  => General settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse-=a 				" Enable mouse
set tabstop=4 				" 
set shiftwidth=4 			" 
set listchars=tab:\¦\ 		" Tab charactor 
set list
set foldmethod=indent 		" 
set foldlevelstart=99 		"  
set number relativenumber 					" Show line number
set ignorecase 				" Enable case-sensitive 

" Disable backup
set nobackup
set nowb
set noswapfile

syntax on

" Enable copying from vim to clipboard
" if has('win32')
" 	set clipboard=unnamed  
" else
"	set clipboard=unnamedplus
" endif

" Auto reload content changed outside
au CursorHold,CursorHoldI * checktime
au FocusGained,BufEnter * :checktime
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
		\ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == ''
			\ | checktime 
		\ | endif
autocmd FileChangedShellPost *
		\ echohl WarningMsg 
		\ | echo "File changed on disk. Buffer reloaded."
		\ | echohl None


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Key mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" Resize pane
nmap <M-Right> :vertical resize +1<CR> 		
nmap <M-Left> :vertical resize -1<CR>
nmap <M-Down> :resize +1<CR>
nmap <M-Up> :resize -1<CR>

" Search a hightlighted text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin list
" (used for Vim-plug - https://github.com/junegunn/vim-plug)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin(stdpath('config').'/plugged')
" Theme
" Plug 'navarasu/onedark.nvim'

	Plug 'joshdick/onedark.vim', 					" Dark theme

" File browser
	Plug 'preservim/nerdTree' 						" File browser  
	Plug 'Xuyuanp/nerdtree-git-plugin' 				" Git status
	Plug 'ryanoasis/vim-devicons' 					" Icon
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'unkiwii/vim-nerdtree-sync' 				" Sync current file 

" File search
	Plug 'junegunn/fzf', 
		\ { 'do': { -> fzf#install() } } 			" Fuzzy finder 
	Plug 'junegunn/fzf.vim'

" Status bar
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

" Terminal
	Plug 'voldikss/vim-floaterm' 					" Float terminal

" Code intellisense
	Plug 'neoclide/coc.nvim', {'branch': 'release'} " Language server 
	"Plug 'jiangmiao/auto-pairs' 					" Parenthesis auto 
	Plug 'mattn/emmet-vim' 
	Plug 'liuchengxu/vista.vim' 					" Function tag bar 
	Plug 'alvan/vim-closetag' 						" Auto close HTML/XML tag 
" auto bash script form
	Plug 'z0mbix/vim-shfmt', { 'for': 'sh' }

" comment line code
	Plug 'tpope/vim-commentary'

" Source code version control 
	Plug 'tpope/vim-fugitive' 						" Git

" nhay just
	Plug 'easymotion/vim-easymotion'

call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin Setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set theme 
colorscheme onedark

" Overwrite some color highlight 
if (has("autocmd"))
	augroup colorextend
		autocmd ColorScheme 
			\ * call onedark#extend_highlight("Comment",{"fg": {"gui": "#728083"}})
		autocmd ColorScheme 
			\ * call onedark#extend_highlight("LineNr", {"fg": {"gui": "#728083"}})
	augroup END
endif

" Disable automatic comment in newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Other setting
for setting_file in split(glob(stdpath('config').'/settings/*.vim'))
	execute 'source' setting_file
endfor

" add copy vs cut vim vao system he thong
vmap <C-c> y: call system("xclip -i -selection clipboard", getreg("\""))<CR>

" add thoat file don
map <C-w> :bd!<CR>
map <C-q> :q!<CR>
" add phim tat luu file ctrl s 
map <C-s> :w!<CR>
" them comment line code auto phim tat
set shortmess=
set cmdheight=2
" auto tu dong format shell script
let g:shfmt_extra_args = '-i 2'
let g:shfmt_fmt_on_save = 1
" just nhay nhanh vao vi chi cac bien coc list
nnoremap <C-i> :CocList outline<CR>

" nhay just plugin anh phim \ de su dung
nmap <silent> f <Plug>(easymotion-overwin-f)

