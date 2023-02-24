#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

neofetch

# [[ -f ~/.bashrc ]] && . ~/.bashrc
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# PS1='[\u@\h \W]\$ '
eval "$(starship init bash)"

source "$HOME/.dotfiles/.config/bash/alias.sh"


precmd() {
  source "$HOME/.dotfiles/.config/zsh/alias.zsh"
}

