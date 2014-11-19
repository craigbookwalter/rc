#!/bin/bash

mv ~/.bashrc ~/.bashrc.orig
mv ~/.bash_profile ~/.bash_profile.orig

ln -s `pwd`/tmux.conf ~/.tmux.conf
ln -s `pwd`/cbubu/bash_profile ~/.bash_profile
ln -s `pwd`/cbubu/bashrc ~/.bashrc
