#!/bin/bash

nitrogen --set-scaled $(find $1 -type f \( -name "*.png" -o -name "*.jpg" -o -name ".svg" \) | shuf -n 1)
