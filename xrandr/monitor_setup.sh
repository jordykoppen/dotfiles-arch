#! /bin/sh

# Create high Refresh rate, HiDPi monitor setting
xrandr --newmode "3840x2160_144.00"  1829.25  3840 4200 4624 5408  2160 2163 2168 2350 -hsync +vsync

# Add new setting
xrandr --addmode Virtual1 3840x2160_144.00

# Set mode, refresh rate, scaling and position for both displays
# Virtual1: 4k 144Hz 163DPI
# Virtual2: 4k 60Hz  163DPI
xrandr \
  --output Virtual1 \
  --mode 3840x2160_144.00 \
  --rate 143.94 \
  --scale 1.25x1.25 \
  --output Virtual2 \
  --scale 1.25x1.25 \
  --pos 4800x0
