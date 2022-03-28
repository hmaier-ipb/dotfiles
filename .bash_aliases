#-----------------
#my nice bash aliases
#-----------------
alias edit-bashrc="vim /home/hmaier/.bashrc"
alias edit-bashaliases="vim /home/hmaier/.bash_aliases"
alias edit-sxhkdconifg="vim ~/.config/sxhkd/sxhkdrc"
alias edit-bspwmrc="vim ~/.config/bspwm/bspwmrc"
alias edit-polybarconfig="vim ~/.config/polybar/config"
alias edit-vimrc="vim ~/.vimrc"
alias edit-picomconfig="vim ~/.config/picom/picom.conf"
alias mouse-config="piper"

alias login-xyz="ssh root@hendrikmaier.xyz"
alias login-raspi="ssh pi@192.168.178.102" 
alias login-mysql="sudo mysql -p -u root"

alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias key-names="xev -event keyboard | grep keysym"
alias update="sudo pacman -Syu"
alias b="exec bash"
alias yt-dl="yt-dlp -x  --audio-format mp3"
alias timeshift="sudo timeshift-gtk"
alias p="sudo pacman"
alias poff="poweroff"
alias nf="neofetch"
alias ls="exa"
alias r="ranger"
alias nv="nvim"
alias mp="makepkg -sic"
alias gc="git clone"
alias zah="zathura"
alias ct="history -a && xfce4-terminal"
alias disks="lsblk"

alias dfr='/usr/bin/git --git-dir=$HOME/repos/dotfiles/ --work-tree=$HOME'


