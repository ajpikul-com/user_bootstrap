# Put your fun stuff here.
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -a --color=auto'
alias lla='ls -la --color=auto'
alias l.='ls -d .* --color=auto'
alias termbin='nc termbin.com 9999'
alias vim=nvim

export EDITOR=$(which nvim)
if [ -z "${ZSH_VERSION}" ]; then
	bind 'set match-hidden-files off' &> /dev/null || true
	export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
	autoload -U colors && colors
	export PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "
	bindkey -e
	bindkey "^[[1;3C" forward-word
	bindkey "^[[1;3D" backward-word
fi
export PATH="/home/${USER}/bin:$PATH"

if [ "${TERM}" = "alacritty" ]; then
	export TERM="xterm-256color"
fi

setxkbmap us,latam,es,br &>/dev/null || true



