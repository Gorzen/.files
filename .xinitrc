# Change keyboard layout
setxkbmap -model latitude -layout ch -variant fr

# Switch caps-lock and escape keys
caps

# Enable natural scrolling
xinput set-prop 12 301 1

# Enable tapping touchpad
xinput set-prop 12 319 1

# Set delay beofre repeating key, and repeating rate
xset r rate 350 25

# Compositor
#xcompmgr -c &
compton -b

# Wallpaper
~/.fehbg &
random-wallpaper &

# Notification daemon
dunst &

# Xresources
xrdb ~/.Xresources

# Start i3
exec i3
