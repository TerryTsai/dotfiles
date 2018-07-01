# Set background
xsetroot -solid '#272822'

# For special keys
xbindkeys -p

# Dwm is a non-reparenting wm
export _JAVA_AWT_WM_NONREPARENTING=1

# Start window manager
exec dwm
