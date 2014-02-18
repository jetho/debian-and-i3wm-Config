#!/bin/sh

# set the cursor
xsetroot -cursor_name left_ptr

# Programs to launch at startup
sh ~/.fehbg &
trayer --edge bottom --align right --SetDockType true --SetPartialStrut true --expand true --width 10 --widthtype percent --transparent true --tint black --alpha 0 --height 20 &

# Programs which will run after Xmonad has started
urxvtc +bc +uc -cr Green -name tmux -e tmux attach &
firefox &
urxvtc -name weechat -e weechat-curses &
urxvtc -name ncmpcpp -e ncmpcpp &
urxvtc -name mutt -e mutt &
sleep 2 
urxvtc -name newsbeuter -e newsbeuter & 
urxvtc -name nethogs -e sudo nethogs -d3 eth0 &
sleep 2  
urxvtc -name slurm -e slurm -i eth0 &
sleep 2
urxvtc -name iotop -e sudo iotop &
sleep 2
urxvtc -name htop -e htop &
urxvtc -name ranger -e ranger &

