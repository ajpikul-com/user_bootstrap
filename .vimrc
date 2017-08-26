syntax on
set background=dark
set mouse=a
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=0 noexpandtab
set number
set cursorline
set wildmenu
set foldmethod=syntax
set foldcolumn=8
set switchbuf=usetab,newtab
autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif
