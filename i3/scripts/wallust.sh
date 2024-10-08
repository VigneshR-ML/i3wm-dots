#!/bin/bash

wallust run "$1"
feh --bg-fill "$1"
xrdb -merge ~/.cache/wal/colors.Xresources
