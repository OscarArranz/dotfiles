#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Launch Polybar, using default config location ~/.config/polybar/config
polybar right-left 2>&1 | tee -a /tmp/polybar.log & disown
polybar left-left 2>&1 | tee -a /tmp/polybar.log & disown
sleep 0.2
polybar right-separator 2>&1 | tee -a /tmp/polybar.log & disown
polybar left-separator 2>&1 | tee -a /tmp/polybar.log & disown
sleep 0.2
polybar right-space 2>&1 | tee -a /tmp/polybar.log & disown
polybar left-space 2>&1 | tee -a /tmp/polybar.log & disown
sleep 0.2
polybar left-right 2>&1 | tee -a /tmp/polybar.log & disown
polybar spotify 2>&1 | tee -a /tmp/polybar.log & disown
polybar volume 2>&1 | tee -a /tmp/polybar.log & disown
polybar right-right 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."

