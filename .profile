[[ -f ~/.bashrc ]] && . ~/.bashrc

export _JAVA_AWT_WM_NONREPARENTING=1
export PATH="$PATH:$HOME/bin:$HOME/.local/share/gem/ruby/2.7.0/"
export EDITOR="nvim"
export READER="zathura"
export VISUAL="nvim"
export CODEEDITOR="vscodium"
export TERMINAL="st"
export BROWSER="qutebrowser"
export COLORTERM="truecolor"
export PAGER="less"
export WM="bspwm"
#export RANGER_LOAD_DEFAULT_RC=FALSE

export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
