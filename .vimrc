source /usr/share/vim/vim80/defaults.vim

set background=dark

set timeoutlen=500
set ttimeoutlen=0

set sts=2
set ts=2
set sw=2

set number relativenumber

set mouse=a

color koehler
syntax on

execute "set <xUp>=\e[1;*A"
execute "set <xDown>=\e[1;*B"
execute "set <xRight>=\e[1;*C"
execute "set <xLeft>=\e[1;*D"

inoremap <C-Up> <Esc>3ki
inoremap <C-Down> <Esc>3ji

:command Sw w<Space>!sudo tee %

:function Mdst()
:	nnoremap <Space><Space> 0f\|f\|lld$A:heavy_check_mark:<Esc>j0
:endfunction

:function Report()
:	nnoremap <Space><Space><Space> :w<Enter>:!make rpdf<Enter><Enter>
:endfunction

:function Presentation()
:	nnoremap <Space><Space><Space> :w<Enter>:!make slides.pdf<Enter><Enter>
:endfunction

:function Talk()
:	nnoremap <Space><Space> /^# <Enter>
:endfunction
