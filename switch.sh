#!/bin/bash

output=$(pidof xfwm4)

if [ -n "$output" ]; then
  killall xfwm4
  killall plank 
  xmonad --replace &
  picom -f &
else
  killall ~/.xmonad/xmonad-x86_64-linux
  killall picom
  xfwm4 --replace &
  plank &
fi
