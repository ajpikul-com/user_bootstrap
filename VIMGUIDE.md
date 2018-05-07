# Vim Guide

### This is for reminders. github has good dot files and so does my "misc" repo 

`:mks session_name`  
`:source session_name`  
or `vim -S session_name`

## Modeline

You can set "custom" vim settings w/in first or last 5 lines of any file:  
... if `set modeline` is in vimrc. bug #14088 #73715

`// vim: set filetype=md`

`:help modeline`

## .vimrc

" comment in .vimrc

`map KEY_COMBO command`  
ex: `map rr :source ~/.vimrc` makes `\rr` autotype (but not execute, need &lt;CR> for that) ":source ~/.vimrc"

Filetype specific vimrcs:  
~/.vim/ftplugin/javascript.vim, python.vim, etc

## Here's and there's


:au[tocmd] [group] {event} {pat} [nested] {cmd}

`exuberant-ctags --c-kinds=+defgpstux -R .`

`^p` OR `^n`: search for previous or next work.. not sure what it depends on... not sure if tag enabled... but it's awesome

from vim readme: "ctags files can be used to find a file very quickly. Just add the "--extra=+f" option in the ctags line. You may then open new files manually with autocompletion, with :tag myfile.cpp"

This works decently for C, I think that it does more than .c and .h files tho? .S files would be nice. .ld too. There might be better taggers.

`set tags=path/to/tags`  
also, `:pwd` shows you current working directory  
`:cd %:p:h` sets pwd to open file  
`:lcd %:p:h` only for this pane  
not sure if that'll make tags easier...

`^x ^o`--opens list while in insert mode if omnifunc is set  
`^]` -------jump to definition  (change window)  
`^w }`----opens a preview window  
// theres lots of weird shit going on here  
`^w z`----closes preview window  
`^T` -------move to previous file  

^w _ // max height of pane  
^w | // max width of pane  
^w = // make panes equal  
^w T --> break out pane to new tab  

`gf` -- open file in this window (pane)  
`^w f` -- open file in new window (pane)  
`^w gf` -- open file in new tab  
`:echo &path` to see where it's looking

`:set something?` <-- returns value of settings which are options  
`:echo &something` <-- works for more things  

`:echo &ft` <-- vim guesses filetype

`:help :filetype-overview`

Macros are super good for lots of repetition:  
1) `qSOMELETTER` starts recording  
2) `q` stops recording  
3) `@SOMELETTER` repeats recording  

**VIM CAN BE USED TO BROWSE AND EDIT ZIPPED AND TARRED FILES**


:e ftp/http/rcp/rsync/scp/sftp://user@machine:#port/path <-- just a normal w/e  
*need more info here, http not so good*


Vim can also start in a server mode

My plugins:

**NERD_commenter:** #<lead>c{c -> comment out those lines, i -> invert comment state}, more elsewhere  
**Sensible**: basically does a lot vimrc stuff, might override mine  fix backspace, always see one line above/below in scrolls, autoread file changes  
**scripttease**: supposed to help with scripts 
**vim-gitgutter**: supposedly some interesting git tools
**vim-node**: adds some stuff like `gf` to jump to a file w/ require  
**vim-surround**: adds shortcuts for editing surroundings.. cs"' changes " to ', or cs"<q>, or cst!. ds" deletes surroundings. there's more if you check it out.  
**vim-fugative**: feature-rich git thinger, if we need it, we'll look it up
**vim-sneak**: like `f` and `F`, but takes two characters on s and S
**vim-snipmate**: lots of snippets you gotta checkout, use SnipMateOpenSnippetFiles to see a list of snip files loaded, ~/.vim/snippets contains .snippets files you make
