#
# ~/.bashrc
#

# Initialize hyprland from start
if uwsm check may-start; then
    exec uwsm start hyprland.desktop
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

# -----------------------------------------------------
# ALIASES
# -----------------------------------------------------

alias config='vim ~/.config/hypr/hyprland.conf'
alias cls='clear'
alias nf='fastfetch'
alias pf='pfetch'
alias ls='eza --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'
alias lt2='eza -a --tree --level=2 --icons'
alias shutdown='systemctl poweroff'
alias vim='nvim'
alias ts='~/dotfiles/scripts/snapshot.sh'
alias matrix='cmatrix'
alias wifi='nmtui'
alias od='~/private/onedrive.sh'
alias rw='~/dotfiles/waybar/reload.sh'
alias winclass="xprop | grep 'CLASS'"
alias dot="cd ~/dotfiles"
alias restartwifi="systemctl restart NetworkManager.service"
alias virshstart="sudo virsh net-start default"
alias cd="z"
alias brmin="brightnessctl -q s 15%"
alias brmax="brightnessctl -q s 100%"
alias brmid="brightnessctl -q s 50%"
alias dockerstart="systemctl start docker.service"
alias wifion="nmcli radio wifi on"
alias wifioff="nmcli radio wifi off"

# -----------------------------------------------------
# GIT
# -----------------------------------------------------

alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gst="git stash"
alias gsp="git stash; git pull"
alias gcheck="git checkout"


# -----------------------------------------------------
# EDIT CONFIG FILES
# -----------------------------------------------------

alias confq='nvim ~/dotfiles/qtile/config.py'
alias confb='nvim ~/dotfiles/.bashrc'

# -----------------------------------------------------
# EDIT NOTES
# -----------------------------------------------------

alias notes='vim ~/notes.txt'

# -----------------------------------------------------
# SYSTEM
# -----------------------------------------------------

alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias setkb='setxkbmap de;echo "Keyboard set back to de."'

# -----------------------------------------------------
# START STARSHIP
# -----------------------------------------------------
eval "$(starship init bash)"

# -----------------------------------------------------
#START ZOXIDE 
# -----------------------------------------------------
eval "$(zoxide init bash)"

if [[ $(tty) == *"pts"* ]]; then
    pfetch
fi

# Created by `pipx` on 2024-02-21 02:21:56
export PATH="$PATH:/home/tarmairon/.local/bin"
export CHROME_EXECUTABLE=/opt/google/chrome/google-chrome

#source the path to bash-completion
source /usr/share/git/completion/git-completion.bash
