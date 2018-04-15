" this will break if you haven't installed pathogen
execute pathogen#infect()

set nocompatible
syntax on
set background=dark
set mouse=a
set autoindent
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set softtabstop=0 noexpandtab
set number
set cursorline
set wildmenu
set foldmethod=syntax
set foldcolumn=8
set switchbuf=usetab,newtab

" this is supposed to make folding chillout
autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

set omnifunc=syntaxcomplete?Complete

set laststatus=2
set statusline=
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " filename
set statusline+=%h%m%r%w                     " status flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type
set statusline+=%=                           " right align remainder
set statusline+=0x%-8B                       " character value
set statusline+=%-14(%l,%c%V%)               " line, character
set statusline+=%<%P                         " file position

colorscheme peachpuff
