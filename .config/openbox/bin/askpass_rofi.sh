#!/usr/bin/env bash
rofi -dmenu\
    -password\
    -i\
    -no-fixed-num-lines\
    -p "Contraseña de SU: "\
    -theme ~/.config/openbox/bin/askpass.rasi
