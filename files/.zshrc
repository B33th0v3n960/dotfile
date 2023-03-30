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


bindkey -e
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
eval "$(starship init zsh)"
source "$HOME/do/files/.config/zsh/alias.zsh"

precmd() {
  source "$HOME/do/files/.config/zsh/alias.zsh"
}

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

neofetch

