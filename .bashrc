#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

neofetch

# [[ -f ~/.bashrc ]] && . ~/.bashrc
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

PS1='[\u@\h \W]\$ '
eval "$(starship init bash)"

alias ls='exa --color=always --group-directories-first --icons'        # preferred listing
alias la='exa -a --color=always --group-directories-first --icons'     # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'     # long format
alias lla='exa -al --color=always --group-directories-first --icons'   # long format --all
alias lt='exa -aT --color=always --group-directories-first --icons'    # tree listing
alias l.="exa -a | egrep '^\.'"        

alias cls='clear && neofetch'
alias suspend='systemctl suspend'
