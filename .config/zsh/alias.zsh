#
#   █████╗ ██╗     ██╗ █████╗ ███████╗███████╗███████╗
#  ██╔══██╗██║     ██║██╔══██╗██╔════╝██╔════╝██╔════╝
#  ███████║██║     ██║███████║███████╗█████╗  ███████╗
#  ██╔══██║██║     ██║██╔══██║╚════██║██╔══╝  ╚════██║
#  ██║  ██║███████╗██║██║  ██║███████║███████╗███████║
#  ╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝
#
# exa aliases
alias ls='exa -al --color=always --group-directories-first --icons --sort=extension --git --git-ignore'   # long format --all
alias la='exa -a --color=always --group-directories-first --icons --sort=extension '     # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons --sort=extension --git --git-ignore'     # long format
alias lt='exa -aT --color=always --group-directories-first --icons --sort=extension --ignore-glob=".git" --git --git-ignore'    # tree listing
alias l.="exa -a --sort=extension | egrep '^\.'"        

alias cls='clear && neofetch'
alias suspend='systemctl suspend'

# change directors
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

alias desk="cd ~/Desktop/"
alias docs="cd ~/Documents/"
alias pics="cd ~/Pictures/"
alias down="cd ~/Downloads/"
alias media="cd /media/"
alias other="cd ~/Others/"
alias trash="cd /.local/share/Trash"
alias dotfile='cd ~/.dotfiles/'

alias work='cd ~/Documents/work/'

alias code="cd ~/Desktop/code/"
alias chess='cd ~/Desktop/code/chess-tournament-sorting/'
alias note='cd ~/Documents/notes/'

# applications
alias view="nsxiv"
alias cat='bat --style header --style snip --style changes --style header'
alias vim="nvim"
alias vi="nvim"
alias fetch="neofetch"
alias ncmpcpp='ncmpcpp -b .config/ncmpcpp/bindings'
alias nc='ncmpcpp -b .config/ncmpcpp/bindings'
alias mixer="pulsemixer"
alias ncdu="ncdu --color dark"
alias blue="bluetoothctl"
alias list="lt --ignore-glob='node_modules|.git'"
alias fig="figlet -f ansi-shadow"
alias mpc="mpc --host 127.0.0.1  -p 6600"
alias git-diff='git difftool --tool=nvimdiff'
alias minecraft='sudo java -jar ~/Others/TLauncher-2.876.jar'

# shorten commands
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias ip='ip -color'
alias grubup="sudo update-grub"

alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='grep -F --color=auto'
alias egrep='grep -E --color=auto'
alias hw='hwinfo --short' 
alias please='sudo'
alias cleanup='sudo pacman -Rns (pacman -Qtdq)'

alias pacman="sudo pacman"
alias vi-alias="vim ~/.dotfiles/.config/zsh/alias.zsh"

# temporary 
