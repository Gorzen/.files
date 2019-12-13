let mapleader="," " leader is comma
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Nerd tree
Plugin 'scrooloose/nerdtree'
" Nerd tree git plugin
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Ctrl-P
"Plugin 'ctrlpvim/ctrlp.vim'
" You complete me
Plugin 'ycm-core/YouCompleteMe'
" Fzf vim
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
" Align markdown tables
Plugin 'junegunn/vim-easy-align'
call vundle#end()            " required
filetype plugin indent on    " required

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

set background=dark " tell vim that we have a dark background
syntax enable " enable syntax
colorscheme badwolf " colorscheme

" Plug
"call plug#begin()
" Nerd tree
"Plug 'scrooloose/nerdtree'
" Nerd tree git plugin
"Plug 'Xuyuanp/nerdtree-git-plugin'
" Ctrl-P
"Plug 'ctrlpvim/ctrlp.vim'
"call plug#end()


nnoremap <Leader>n :NERDTreeToggle<Enter>
nnoremap <Leader>N :NERDTreeFind<Enter>

nnoremap <C-P> :Files<CR>
" Search in all files from current directory
nnoremap <Leader>/ :Ag<CR>
nnoremap <Leader>f :Lines<CR>

" Align GitHub-flavored Markdown tables
au FileType markdown vnoremap <Leader><Bslash> :EasyAlign*<Bar><Enter>


" Prevent colorscheme from changing background color (opacity)
" Background color of text
highlight Normal ctermbg=None
" Background color of non-text (bottom of file)
highlight NonText ctermbg=None

" Toggle opacity: on -> remove background color | off -> reload colorscheme
nnoremap <Leader>q :colorscheme badwolf<CR>
nnoremap <Leader>Q :hi Normal ctermbg=None<CR>:hi NonText ctermbg=None<CR>

" Color spaces and tabs
" highlight WhiteSpaces ctermbg=Blue ctermfg=Blue guibg=Blue
" highlight Tabs ctermbg=Red
" match WhiteSpaces /\s/
" match Tabs /\t/

" Tab sizes
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set showcmd " show command currently typed
set number " show line number
set number relativenumber " set line numbers
set cursorline " highlight current line
set wildmenu " menu for <TAB> autocompletion, for example when looking for a file in vim
set showmatch " highlight sibling parenthis or bracket or similar
set smartindent " auto indent
set mouse=a " enable mouse

set incsearch " search as characters are entered
set hlsearch " highlight matches in search
set ignorecase " case insensitive (add \C for case sensitive search)
set smartcase " smart case sensitive (if the term is case sensitive so is the search)

" turn off search highlight
nnoremap <Leader><Space> :nohlsearch<CR>


" timeout length (before it is no longer considered a 'combo')
set timeoutlen=500
set ttimeoutlen=0

set scrolloff=4 " scrolloff (distance between top-line and top-position of cursor) (samed for bottom)

" Folding
set nofoldenable " disable folding
"set foldlevelstart=10 " Open most folds by default
"set foldnestmax=20 " 20 nested fold max (maximum in vim)
" Open/close fold
"nnoremap <Space> za
"set foldmethod=indent " fold based on indent level

" Move vertically by visual line and not by 'real' line
nnoremap j gj
nnoremap k gk

nnoremap 0 ^

" Jump to last position, e.g. last time file was closed
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" More natural split openings
set splitbelow
set splitright

" Navigation between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Navigation in insert mode
inoremap <C-J> <Down>
inoremap <C-K> <Up>
inoremap <C-L> <S-Right>
inoremap <C-H> <S-Left>

" Copy, cut, paste
vnoremap 	<C-c> "*y :let @+=@*<CR>
"vnoremap 	<C-x> "*d :let @+=@*<CR>
"noremap 	<C-p> "+P
nnoremap	<C-a> ggVG"*y :let @+=@*<CR>
nnoremap <Leader>p "0p
nnoremap <Leader>P "0P

" ?
"execute "set <xUp>=\e[1;*A"
"execute "set <xDown>=\e[1;*B"
"execute "set <xRight>=\e[1;*C"
"execute "set <xLeft>=\e[1;*D"
"inoremap <C-Up> <Esc>3ki
"inoremap <C-Down> <Esc>3ji

" Compile pdf from file (latex)
nnoremap <Leader>L :w<CR>:!latexmk -cd -pdf %; latexmk -cd -c %<CR>
" Press enter twice (to return to vim automatically if latexmk runs as expected)
nmap <Leader>l <Leader>L<CR>

" Run code
autocmd filetype python nnoremap <F12> :w<CR>:!python %<CR>
autocmd filetype scala nnoremap <F12> :w<CR>:!scala -savecompiled %<CR>
autocmd filetype c nnoremap <F12> :w<CR>:!gcc % -o %:r && ./%:r<CR>
autocmd filetype cpp nnoremap <F12> :w<CR>:!g++ % -o %:r && ./%:r<CR>
autocmd filetype zsh nnoremap <F12> :w<CR>:!zsh %<CR>
autocmd filetype sh nnoremap <F12> :w<CR>:!sh %<CR>
autocmd filetype bash nnoremap <F12> :w<CR>:!bash %<CR>

" Make
nnoremap <Leader>M :w<CR>:!make<CR>
" Press enter twice (to return to vim automatically if make runs as expected)
nmap <Leader>m <Leader>M<CR>

" Remove trailing white spaces, replace tabs, remove empty ending lines
command FixSpace RemoveEmptyEndingLines|RemoveTrailingWhiteSpaces|ReplaceTabs
command -bar RemoveEmptyEndingLines %s/\($\n\s*\)\+\%$//e
command -bar RemoveTrailingWhiteSpaces %s/\s*$//ge
command -bar ReplaceTabs %s/\t/  /ge

" Source vimrc
command Rr source ~/.vimrc

" Save exit if didn't open file as sudo
command Sw w<Space>!sudo tee %

" Mark function as implemented
function Mdst()
	nnoremap <Space><Space> 0f\|f\|lld$A:heavy_check_mark:<Esc>j0
endfunction

" Generate report pdf
function Report()
	nnoremap <Space><Space><Space> :w<Enter>:!make rpdf<Enter><Enter>
endfunction

" Generate slides pdf
function Presentation()
	nnoremap <Space><Space><Space> :w<Enter>:!make slides.pdf<Enter><Enter>
endfunction

" Jump to next slide
function Talk()
	nnoremap <Space><Space> /^# <Enter>
endfunction

" Update installed packages, add the description of package in markdown table
function InstalledPackages()
	nnoremap <Leader>b 0wvt<Space>y:exe ":r ! pacman -Qi <C-r>0 \| awk 'NR==3'"<CR>0d2wkJF\|T\|df\|A<Space>\|<Esc>j
endfunction
