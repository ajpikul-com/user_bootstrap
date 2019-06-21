#!/bin/bash
echo "misc is a bit of a junk drawer with a couple really useful things in it"
echo "make sure to run this from ~/misc"
echo
if [ "$(realpath ~/.bashrc_prologue)" = "$PWD/.bashrc_prologue" ]; then
	echo "Looks like .bashrc_prologue is installed"
else
	echo
	echo ".bashrc_prologue has a couple useful aliases in it."
	echo "It's currently being augmented by a script that outputs important things"
	echo "such as security issues, git folder status, custom scripts, etc"
	echo "but I want output to be in pains for efficiency on a single screen"
fi
if [ "$(realpath ~/.tmux.conf)" = "$PWD/.tmux.conf" ]; then
	echo "Looks like .tmux.conf is installed"
else
	echo
	echo "The .tmux.conf just does a couple basic things, so dump it and link it"
fi
if [ "$(realpath ~/.vimrc)" = "$PWD/.vimrc" ]; then
	echo "Looks like .vimrc installed"
else
	echo
	echo "The .vimrc is pretty comprehensive. Use it, link it, study it. The vimguide goes with it"
	echo "It can take a .vimrc_prologue if you want a custom script without modifying this one"
fi
if [ "$(realpath ~/.Xresources)" = "$PWD/.Xresources" ]; then
	echo "Looks like .Xresources is installed"
else
	echo
	echo "The .Xresources is basically an example, but it's not bad. Good for URxvt. Maybe link it."
fi
