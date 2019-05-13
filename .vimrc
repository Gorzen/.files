source /usr/share/vim/vim80/defaults.vim

set background=dark

set timeoutlen=500
set ttimeoutlen=0

set number relativenumber

set mouse=a

execute "set <xUp>=\e[1;*A"
execute "set <xDown>=\e[1;*B"
execute "set <xRight>=\e[1;*C"
execute "set <xLeft>=\e[1;*D"

inoremap <C-Up> <Esc>3ki
inoremap <C-Down> <Esc>3ji

:function Mdst()
:	nnoremap <Space><Space> 0f\|f\|lld$A:heavy_check_mark:<Esc>j0
:endfunction
