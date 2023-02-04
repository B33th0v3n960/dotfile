#
# ~/.zshrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

neofetch

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

eval "$(starship init zsh)"

source "$HOME/.dotfiles/.config/zsh/alias.zsh"

precmd() {
  source "$HOME/.dotfiles/.config/zsh/alias.zsh"
}
