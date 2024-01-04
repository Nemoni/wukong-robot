#!/bin/bash
sleep 1

session_name=wukong

#Restore Configuration of AlsaMixer
if [ -f $HOME/asound.state ]; then
    alsactl --file=$HOME/asound.state restore
    sleep 1
fi

#Start wukong-robot
tmux new-session -d -s $session_name $HOME/wukong-robot/wukong.py
sleep 1

cd $HOME/wukong-robot

