#! /bin/sh
# This is ran "setup-displays" script in lightdm.
# When I enable dual screen in VMWare, the xrandr "resets"
# The scaling and custom resolution back to default. Therefor
# this dumb script is needed to apply the settings again.
xrandr \
  --output Virtual1 \
  --mode 3840x2160_144.00 \
  --rate 143.94 \
  --scale 1.25x1.25 \
  --output Virtual2 \
  --scale 1.25x1.25 \
  --pos 4800x0
