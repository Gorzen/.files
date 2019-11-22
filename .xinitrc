# Remap keys
remap-keys

# Set delay beofre repeating key, and repeating rate
xset r rate 350 25

# Screen saver parameters
## Dim screen after 5 minutes then 15 seconds later lock screen and turn it off
xset s 300 15
xss-lock -l -n dim-screen -- lock-screen &

# Xresources
xrdb ~/.Xresources

# Compositor
picom -b

# Notification daemon
dunst &

# Wallpaper
~/.fehbg &
random-wallpaper &

# Start i3
exec i3
