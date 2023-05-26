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
alias trash="cd /.local/share/Trash"
alias dotfile='cd ~/.local/dotfile/'

alias work='cd ~/Documents/work/'
alias code="cd ~/Desktop/code/"
alias chess='cd ~/Desktop/code/chess-tournament-sorting/'
alias note='cd ~/Documents/notes/'

# external media
alias media="cd /media/"
alias sd="cd /media/sd/"
alias ihdd="cd /media/internal-hdd/files/"
alias ehdd="cd /media/external-hdd/files/"
alias usb="cd /media/usb/files/"
alias windows="cd /media/windows/"
alias other="cd /media/internal-hdd/files/Others/"

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
alias vi-alias="vim ~/.local/dotfile/files/.config/zsh/alias.zsh"
alias clean='latexmk -c && rm **.synctex.gz'
alias s="kitty +kitten ssh"

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

# temporary 
