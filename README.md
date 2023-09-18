# Basic Tools

`README.sh` is a healthcheck (not necessarily entirely complete)

There is a [vim readme](VIMGUIDE.md).

## Bin Programs 

`bin/ish`: very useful wrapper for ssh if you work with lots of embedded devices under DHCP, always ssh'ing, IPs always changing.

`bin/tirc`: starts tmux + irssi with a different mouse mode than default for irssi's sake

`bin/gitstep`: will allow you to look at commit one by one comparing HEAD to upstream

## Emacs

Installed packages:

* evil
* impatient-mode
* markdown-mode
* pandoc-mode
* simple-httpd

## irssi

`Irssi` has a bunch of scripts and configs.

To `sasl` into libera, you need a password or cert (the cert is in `keepassx` but I doubt it can be used on different machines).


`openssl req -x509 -new -newkey rsa:4096 -sha256 -days 1096 -nodes -out libera.pem -keyout libera.pem`  
^^^^ `config` puts it in `.irssi/`

`/msg NickServ CERT ADD`
