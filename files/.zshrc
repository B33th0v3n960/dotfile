#
#  ███████╗███████╗██╗  ██╗██████╗  ██████╗
#  ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#    ███╔╝ ███████╗███████║██████╔╝██║     
#   ███╔╝  ╚════██║██╔══██║██╔══██╗██║     
#  ███████╗███████║██║  ██║██║  ██║╚██████╗
#  ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="$HOME/.config/scripts:$PATH"
export PATH="$HOME/.local/bin:$PATH"
bindkey -e
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
eval "$(starship init zsh)"
source "$HOME/.local/dotfile/files/.config/zsh/alias.zsh"

precmd() {
  source "$HOME/.local/dotfile/files/.config/zsh/alias.zsh"
}

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

neofetch

