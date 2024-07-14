#!/bin/bash

git submodule init
git submodule update

cp -ri .config ~/.config
cp -ri wallpapers ~/Pictures

