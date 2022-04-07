$HOME/.scripts/shell/coffeefetch

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# FZF -- make it uses ripgrep
if type rg &> /dev/null; then
	export FZF_DEFAULT_COMMAND='rg --files'
	export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# ---Powerline Prompt--- #
#function _update_ps1() {
#    PS1=$(powerline-shell $?)
#}

#if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
#    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
#fi

# ----------------------

# PS1 Prompt
# export PS1="\[\e[33m\][\[\e[m\]\[\e[31m\]\u\[\e[m\]@\[\e[36m\]\h\[\e[m\]:\[\e[35m\]\w\[\e[m\]\[\e[33m\]]\[\e[m\] (\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)) \$ "

#export PROMPT_COMMAND="notify-send 'Important Notice' 'ARCH LINUX IS THE BEST DISTRO'"

set -o vi

# Source configs
for f in ~/.config/shellconfig/*; do source "$f"; done
source /home/coffee/.config/broot/launcher/bash/br

# Starship Prompt
export STARSHIP_CONFIG=~/.starship/config.toml
eval "$(starship init bash)"

# Generated for envman. Do not edit.
# if [ -s "$HOME/.config/envman/load.sh" ] ; then
# 	source "$HOME/.config/envman/load.sh"
# fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
# if [ -f /usr/share/bash-completion/bash_completion ]; then
# 	. /usr/share/bash-completion/bash_completion
# elif [ -f /etc/bash_completion ]; then
# 	. /etc/bash_completion
# fi

# source /usr/share/fzf/completion.bash
# source /usr/share/fzf/key-bindings.bash

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION