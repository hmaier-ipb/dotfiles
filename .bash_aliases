#-----------------------------------------
#my nice bash aliases
#-----------------------------------------
alias edit-bashrc="vim $HOME/.bashrc"
alias edit-bashaliases="vim $HOME/.bash_aliases"
alias edit-sxhkdconifg="vim ~/.config/sxhkd/sxhkdrc"
alias edit-bspwmrc="vim ~/.config/bspwm/bspwmrc"
alias edit-polybarconfig="vim ~/.config/polybar/config"
alias edit-vimrc="vim ~/.vimrc"
alias edit-picomconfig="vim ~/.config/picom/picom.conf"
alias mouse-config="piper"
alias lightdm-settings="sudo lightdm-gtk-greeter-settings"

alias login-xyz="ssh root@hendrikmaier.xyz"
alias login-raspi="ssh pi@192.168.178.102" 
alias login-mysql="sudo mysql -p -u root"

alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias key="xev -event keyboard | grep keysym"
alias update="sudo pacman -Syu"
alias b="exec bash"
alias yt-dl="yt-dlp -x  --audio-format mp3"
alias timeshift="sudo timeshift-gtk"
alias p="sudo pacman"
alias poff="$HOME/.scripts/uptime-log.sh && poweroff"
alias reboot="$HOME/.scripts/uptime-log.sh && reboot"
alias nf="neofetch"
alias ls="exa"
alias r="ranger"
alias lo="libreoffice"
alias nv="nvim"
alias mp="makepkg -sic"
alias gc="git clone"
alias zah="zathura"
alias ct="history -a && xfce4-terminal"
alias disks="lsblk"
alias netstat="ss -lntu"
alias uz="unzip"
alias pwdc="pwd | xclip -selection clipboard"
#alias realpathc="echo $1 | realpath | xclip -selection clipboard"
alias lsorphans="sudo pacman -Qdt"
alias rmorphans="sudo pacman -Rs $(pacman -Qtdq)"
alias d="date"
alias hostname="echo $HOSTNAME"

# Special alias for maintaining my dotfiles
alias dfr='/usr/bin/git --git-dir=$HOME/repos/dotfiles/ --work-tree=$HOME'


