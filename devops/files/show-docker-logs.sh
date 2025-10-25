#!/bin/bash

# Launch terminal
lxterminal --title="logs" --working-directory=/home/heeckhau/devconnect25_demo/prover-demo -e "docker compose logs -f" &

# Wait for terminal to appear
sleep 1

# Find and manipulate the terminal window
TERM_WINDOW=$(xdotool search --name "logs" | head -1)

# Remove decorations
xdotool windowunmap $TERM_WINDOW
xdotool set_window --overrideredirect 1 $TERM_WINDOW
xdotool windowmap $TERM_WINDOW

# Position at bottom left (x=0, y=screen_height-terminal_height)
xdotool windowmove $TERM_WINDOW 0 880

# Resize (width x height in pixels)
xdotool windowsize $TERM_WINDOW 1920 200

# Keep it on top
xdotool windowraise $TERM_WINDOW