#!/bin/bash

git submodule init
git submodule update

cp -r .config ~/.config
cp -r scripts ~/.config
cp -r wallpapers ~/Pictures

