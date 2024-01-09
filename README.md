## Basic Tools

You need to edit whatever file gets run after login, depending on what your main shell is.

`.before_i3.sh` should be run before i3, before any shell. `startx` would be run if we're in `tty1` and `display :0` right after it. `.greeting.sh` can be run if the neither of those true- since `X` is already started.

```
. /home/ajp/.before_i3.sh

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	startx
else
	. /home/ajp/.greeting.sh
fi
```

## i3

My I3 setup is documented in my [personal config](https://github.com/ajpikul-com/lenovo_config)

## emacs

`init.el` will installed what it needs to if it is in one of emac's paths (`~/.emacs.d/` for example).

## tmux

`.tmux.conf` allows us to permanently rename windows and adjusts some usability things.

## nvim

So nvim was installed from my custom nightly aur- there's currently argument about some unmentioned dependencies:

I had to install treesitter (`pacman`) and then `:TSInstall vimdoc` to get some errors to pop up.

Not super pumped about the current config or plugins- we'll see how things go, we're about to start using python.

## Bin Programs 

`bin/ish`: very useful wrapper for ssh if you work with lots of embedded devices under DHCP, always ssh'ing, IPs always changing.

`bin/tirc`: starts tmux + irssi with a different mouse mode than default for irssi's sake.

`bin/gitstep`: will allow you to look at commit one by one comparing HEAD to upstream.

## irssi

`irssi` has a bunch of scripts and configs.

To `sasl` into libera, you need a password or cert (the cert is in `keepassx` but I doubt it can be used on different machines).

`openssl req -x509 -new -newkey rsa:4096 -sha256 -days 1096 -nodes -out libera.pem -keyout libera.pem`  
^^^^ Our `config` puts it in `.irssi/`

`/msg NickServ CERT ADD`

This needs further documentation. It's generally used across tmux.

## VIM

Vim has `editorconfig` installed and there is a `.editorconfig` in this repo. You might want to create a `.vim/after/ftplugin/python.vim` with fold set to indent. `Vim-go` and `jedi-vim` (for python) are good too.
