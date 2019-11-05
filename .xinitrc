# Switch caps-lock and escape keys
caps

# Set delay beofre repeating key, and repeating rate
xset r rate 350 25

# Set screen blanking timeout (turns off screen and locks screen)
xset dpms 600 600 600

# Xresources
xrdb ~/.Xresources

# Compositor
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
