#!/bin/bash

if [ -d $wallpaper_base_dir ]; then
    nitrogen --set $(find $1 -type f -name "*.png" | shuf -n 1)
