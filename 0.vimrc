" It may be the pathogen is not being used, but :help package instead! Check!

set backspace=indent,eol,start
silent! call pathogen#infect()
" All pathogen does is 
" A) Get itself loaded (if installed in ~/.vim/pathogen and linked in ~/.vim/autoload
" (so ~/.vim/autoload/pathogen.vim)
" B) load everything in ~/.vim/bundle (any dir/plugin.vim)
" Honestly it just makes organizing ~/.vim nicer because it searches for *.vim
" files

" the follow will let you look for .vimrc in your local folder
set path+=**
if exists("*pathogen#infect")
	" requires snipmate- assume its installed if pathogen is installed
	" au BufRead * execute ":SnipMateLoadScope " . expand("%:t")
	" I never used it
	let patho = ""
else
	let patho = "No\ Pathogen\ "
endif

set nocompatible
syntax on
set background=dark
set mouse=a
set autoindent
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set softtabstop=0 noexpandtab
set expandtab " we doing spaces bb
set number
set cursorline
set wildmenu
set switchbuf=usetab,newtab

" this is supposed to make folding chillout
autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

"set omnifunc=syntaxcomplete?Complete

set laststatus=2
set statusline=
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " filename
set statusline+=%h%m%r%w                     " status flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type
set statusline+=%=                           " right align remainder
set statusline+=%{patho}
set statusline+=0x%-8B                       " character value
set statusline+=%-14(%l,%c%V%)               " line, character
set statusline+=%<%P                         " file position

set foldenable
set foldmethod=marker
set foldcolumn=8
set foldlevelstart=2

" Don't actually know if this is necessary but..
let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let php_folding=1             " PHP
let r_syntax_folding=1        " R
let ruby_fold=1               " Ruby
let sh_fold_enabled=4         " sh
let is_bash=1
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML

" this line is for vimgo's gofmt to not fuck up folding
" let g:go_fmt_experimental=0
set foldmethod=syntax
" let g:go_fmt_experimental=1

syntax enable
source ~/.vimrc_prologue
