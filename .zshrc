#
# ~/.zshrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

neofetch

export MANPAGER="sh -c 'col -bx | bat -l man -p'"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(starship init zsh)"
source "$HOME/.dotfiles/.config/zsh/alias.zsh"

precmd() {
  source "$HOME/.dotfiles/.config/zsh/alias.zsh"
}

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
