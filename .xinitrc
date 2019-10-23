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

# Set screen-saver delay
xset s 300

# Xresources
xrdb ~/.Xresources

# Compositor
#xcompmgr -c &
compton -b

# Notification daemon
dunst &

# Wallpaper
~/.fehbg &
random-wallpaper &

# Lock screen
xss-lock -l -- lock-screen &

# Start i3
exec i3
