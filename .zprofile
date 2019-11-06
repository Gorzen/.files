# Add $HOME/.local/bin to $PATH
export PATH="$HOME/.local/bin:$PATH"
export EDITOR="vim"
export TERMINAL="termite"
export BROWSER="qutebrowser"
export READER="zathura"
export FILE="ranger"
export LESS="-R -F"

# My variables
export EPFL_DIR="$HOME/EPFL/MA1"

# Start X
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
