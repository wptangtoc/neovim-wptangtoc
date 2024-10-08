let g:floaterm_keymap_new    = '<F3>'
let g:floaterm_keymap_prev   = '<M-Right>'
let g:floaterm_keymap_next   = '<M-Left>'
let g:floaterm_keymap_toggle = '<F2>'
let g:floaterm_position = 'topright'
let g:floaterm_width = 0.8
let g:floaterm_height = 0.8
let g:floaterm_title = 'Terminal $1/$2'
let g:floaterm_wintype = 'float'
let g:floaterm_rootmarkers = ['.pro']
let g:floaterm_shell = 'bash'

" Set color
hi Floaterm guibg=Grey15
hi FloatermBorder guifg=Orange guibg=DarkGreen
"hi FloatermNC guibg=darkred


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Hotkey to manage terminals
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open a new terminal 
nnoremap   <silent>   <leader>to    :FloatermNew<CR>
tnoremap   <silent>   <leader>to    <C-\><C-n>:FloatermNew<CR>

" Kill current terminal 
nnoremap <silent> 	<leader>tk 		:FloatermKill<CR>:FloatermPrev<CR>
tnoremap <silent> 	<leader>tk 		<C-\><C-n>:FloatermKill<CR>:FloatermPrev<CR>

" Navigation next and previous terminal 
nnoremap <silent> 	<leader>tn 		:FloatermNext<CR>
tnoremap <silent> 	<leader>tn 		<C-\><C-n>:FloatermNext<CR>
nnoremap <silent> 	<leader>tp 		:FloatermPrev<CR>
tnoremap <silent> 	<leader>tp 		<C-\><C-n>:FloatermPrev<CR>

" Toggle terminal
nnoremap <silent> 	<leader>tt 		:FloatermToggle<CR>
tnoremap <silent> 	<leader>tt 		<C-\><C-n>:FloatermToggle<CR>

" Focus terminal 
nnoremap <silent> 	<leader>tf 		<C-\><C-n><C-W><Left>
tnoremap <silent> 	<leader>tf 		<C-\><C-n><C-W><Left>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Hotkey to run other console apps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Git 
" nnoremap   <F2>    :FloatermNew --position=bottomleft --height=0.8 --width=0.6 --title='terminal'<CR>
