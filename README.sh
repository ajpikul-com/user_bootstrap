#!/bin/bash
echo "User System Start contains basic development stuff"
echo
if [ "$(realpath ~/.bashrc_prologue)" = "$PWD/0.bashrc_prologue" ]; then
	echo "Looks like .bashrc_prologue is installed"
else
	echo
	echo ".bashrc_prologue has a couple useful aliases in it, terminal colors, default editor etc."
	if ! test -f "~/.bashrc_prologue"; then
		read -p "Add bashrc_prologue?" yn
		case $yn in
			[Yy] ) echo "Adding.."
				ln -s $PWD/0.bashrc_prologue /home/$USER/.bashrc_prologue 
					;;
		esac
	fi
fi

if [ "$(realpath ~/.tmux.conf)" = "$PWD/0.tmux.conf" ]; then
	echo "Looks like .tmux.conf is installed"
else
	echo
	echo "The .tmux.conf allows window renaming (ctl+b ,), turns on mouse, shortens command time out..." 
	if ! test -f "~/.tmux.conf"; then
		read -p "Add .tmux.conf?" yn
		case $yn in
			[Yy] ) echo "Adding.."
				ln -s $PWD/0.tmux.conf /home/$USER/.tmux.conf
					;;
		esac
	fi
fi

if [ "$(realpath ~/.vimrc)" = "$PWD/0.vimrc" ]; then
	echo "Looks like .vimrc installed. Checkout the guide and use the plugins."
else
	echo
	echo "The .vimrc is pretty comprehensive."
	echo "It can take a .vimrc_prologue if you want a custom script without modifying this one"
	if ! test -f "~/.vimrc"; then
		read -p "Add .vimrc?" yn
		case $yn in
			[Yy] ) echo "Adding.."
				ln -s $PWD/0.vimrc /home/$USER/.vimrc
				touch /home/$USER/.vimrc_prologue
					;;
		esac
	fi
fi

if [ "$(realpath ~/.Xresources)" = "$PWD/0.Xresources" ]; then
	echo "Looks like .Xresources is installed"
else
	echo
	echo "The .Xresources is basically an example, but it's not bad. Good for URxvt. Maybe link it."
	if ! test -f "~/.Xresources"; then
		read -p "Add Xresources?" yn
		case $yn in
			[Yy] ) echo "Adding.."
				ln -s $PWD/0.Xresources /home/$USER/.Xresources 
					;;
		esac
	fi
fi
