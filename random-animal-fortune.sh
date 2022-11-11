#!/bin/bash
#
# .random-animal-fortune.sh
#
# Script to output fortune through a random animal using cowsay
#
# REQUIREMENTS:
# fortune
# cowsay
#
# nreichen@umich.edu

if [ -x /usr/games/cowsay -a -x /usr/games/fortune ]; then
   random_animal=$( find "/usr/share/cowsay/cows" -type f -print0 | shuf -z -n 1 | rev | cut -c5- | rev | cut -c24-)
   fortune | cowsay -f "$random_animal"
fi
