export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="lulu"

plugins=(zsh-autosuggestions
				 colored-man-pages
				 z
				 zsh-syntax-highlighting
				)

source $ZSH/oh-my-zsh.sh

# LS Colors
eval $(dircolors -b $HOME/.dircolors)

# Bind keys
## Movements
bindkey '^K' up-line-or-history # Ctrl-h
bindkey '^J' down-line-or-history # Ctrl-j
bindkey '^H' backward-word # Ctrl-h
bindkey '^L' forward-word # Ctrl-l
bindkey '^[h' backward-char # Alt-h
bindkey '^[l' forward-char # Alt-l
### Disable arrows
bindkey '^[OA' beep # 'Disable' up arrow
bindkey '^[OB' beep # 'Disable' down arrow
bindkey '^[OC' beep # 'Disable' left arrow
bindkey '^[OD' beep # 'Disable' right arrow

# Config
## Reload config
alias rr='source ~/.zshrc'
alias rx='xrdb ~/.Xresources'
## Edit config
alias vz='vim ~/.zshrc'
alias vp='vim ~/.zprofile'
alias vv='vim ~/.vimrc'
alias vg='vim ~/.gitconfig'
alias vx='vim ~/.Xresources'
alias vxi='vim ~/.xinitrc'
alias vr='vim ~/.config/ranger/rc.conf'
alias vte='vim ~/.config/termite/config'
alias vi='vim ~/.config/i3/config'
alias vib='vim ~/.config/i3blocks/config'
alias vq='vim ~/.config/qutebrowser/config.py'
## Personal files
alias vt='vim ~/Documents/TODO.md'
alias vc='vim ~/Documents/problems-config.md'
alias vs='vim ~/Documents/software.md'

# Basic programs
export LESS="$LESS -F"
alias v='vim'
alias mk='mkdir -p'
alias ls='ls -v --color=tty'
alias diff='diff --color=auto'
alias rm='rm -I'
alias tre='tree -a -I ".git|venv|.venv|*.class|__pycache__|.idea|.ipynb_checkpoints"'

# Apt
alias update='sudo apt update && sudo apt upgrade && sudo apt dist-upgrade && sudo apt autoremove'
alias apti='sudo apt install'
alias aptr='sudo apt remove'

# Firmware update
alias fwupd='fwupdmgr refresh; fwupdmgr get-updates; fwupdmgr update'

# Pacman
alias pm='pacman'
alias spm='sudo pacman'
alias spms='sudo pacman -S'
alias spmr='sudo pacman -Rns'
alias spmu='sudo pacman -Syu'

# Ranger
alias ra='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias ran='ranger' 

# Monitors setup - xrandr
## Enable second monitor
alias dual-monitor='xrandr --output HDMI-1 --auto --left-of eDP-1'
## Refresh xrandr, i.e. after unplugging HDMI for example, to disable second monitor
alias refresh-monitor='xrandr --auto'

# Git
alias g='git'
alias gnp='git --no-pager'
alias dg='dirty-git-epfl'
alias dgf='dg fetch -q'
## Quickly add, commit and push
function gc {
	git add .; git commit -m "$@"; git push
}
## Change pager for one command (less -X) don't clear less when quitting but can't scroll
function gp {
	git config --global core.pager "less -X"; git "$@"; git config --global core.pager "less"
}

# Nmcli
alias nmw='nmcli dev wifi'
alias nmwl='nmcli dev wifi list'
alias nmwr='nmcli dev wifi rescan'
alias nmwrl='nmwr; nmwl'
alias nmwc='nmcli dev wifi connect'
alias nmc='nmcli con'
alias nmcs='nmcli con show'
alias nmcu='nmcli con up'

# Pip
alias pi='pip install'
alias pu='pip uninstall'
alias pl='pip list'
alias pip-update="pip list --outdated | awk '{if (NR!=1 && NR!=2) {print $1;}}' | xargs -n1 pip install -U"

# Jupyter
alias jptl='jupyter lab &> /dev/null'

# Virtual env
alias venv='source .venv/bin/activate'
alias venva='source $HOME/EPFL/MA1/Ada/.venv/bin/activate'
alias venvm='source $HOME/EPFL/MA1/ML/.venv/bin/activate'
alias venvi='source $HOME/EPFL/MA1/InfoSec/.venv/bin/activate'
alias venvn='source $HOME/EPFL/MA1/NatLang/.venv/bin/activate'

# Network
alias public-ip='curl ifconfig.me/ip; printf "\n"'
alias vpn-epfl='sudo openconnect -b vpn.epfl.ch -u liseli'
alias vpn-epfl-off='sudo pkill openconnect'

# Light config
alias night='xbacklight -set 2; redshift -P -O 2500k'
alias day='redshift -x'

# Change directories
alias gd='cd ~/.files'
alias gg='cd ~/EPFL/MA1'
alias gst='cd ~/EPFL/BA6/stainless'
## Data Analysis
alias ga='cd ~/EPFL/MA1/Ada'
alias gac='cd ~/EPFL/MA1/Ada/Course'
alias gah='cd ~/EPFL/MA1/Ada/Homeworks/Homework-02'
alias gal='cd ~/EPFL/MA1/Ada/Lectures'
alias gap='cd ~/EPFL/MA1/Ada/Project'
alias gaq='cd ~/EPFL/MA1/Ada/Quizzes'
alias gat='cd ~/EPFL/MA1/Ada/Tutorials'
## Information Security and Privacy
alias gi='cd ~/EPFL/MA1/InfoSec'
alias gie='cd ~/EPFL/MA1/InfoSec/Exercises'
alias gih='cd ~/EPFL/MA1/InfoSec/Homeworks'
alias gil='cd ~/EPFL/MA1/InfoSec/Lectures'
## Machine Learning
alias gm='cd ~/EPFL/MA1/ML'
alias gmc='cd ~/EPFL/MA1/ML/Course'
alias gmh='cd ~/EPFL/MA1/ML/Homeworks'
alias gmp='cd ~/EPFL/MA1/ML/Projects/Project-02'
## Natural Language Processing
alias gn='cd ~/EPFL/MA1/NatLang'
alias gne='cd ~/EPFL/MA1/NatLang/Exercises'
alias gnl='cd ~/EPFL/MA1/NatLang/Lectures'
## SHS
alias gr='cd ~/EPFL/MA1/SHS'
alias grc='cd ~/EPFL/MA1/SHS/Conferences'
## Statistics
alias gs='cd ~/EPFL/MA1/Stats'
alias gsd='cd ~/EPFL/MA1/Stats/Davison'
alias gse='cd ~/EPFL/MA1/Stats/Exercises'

# Open stuff
alias search='cd $HOME; file_search >> /dev/null; cd - >> /dev/null'
function o {
	if [ $# -eq 0 ]; then
		file_search >> /dev/null
	else
		xdg-open $1 &|
	fi
}

# Do stuff and detach it from terminal
function doo {
	$@ &> /dev/null & disown
}

# Zathura tab
function zattab {
	tabbed -c zathura $@ -e >> /dev/null &|
}

# Search history
function hg {
	history | grep "$@"
}

# Search processes
function pg {
	ps -aux | grep "$@"	
}

# Ada
## Connect to cluster
alias adac='ssh liseli@iccluster040.iccluster.epfl.ch'
## Forward port from remote to localhost (port as first argument)
function adaf {
	ssh -N -L "$1":localhost:"$1" liseli@iccluster040.iccluster.epfl.ch
}

# ISP
ISP_HOST_FOLDER="/home/user/sploits/"
ISP_LOCAL_FOLDER="/home/lulu/EPFL/MA1/InfoSec/Homeworks/Homework-1/"
ISP_FILE="sploit1.c"

## Send file of interest to host
alias isp='sshpass -p user scp -P 2222 $ISP_LOCAL_FOLDER$ISP_FILE user@127.0.0.1:$ISP_HOST_FOLDER'
## Get file of interest from host
alias ispt='sshpass -p user scp -P 2222 user@127.0.0.1:$ISP_HOST_FOLDER$ISP_FILE $ISP_LOCAL_FOLDER'
## Connect to host
alias ispc='sshpass -p user ssh -p 2222 user@127.0.0.1'
## Send some file from local folder to host folder
## Get some file from host folder to local folder
