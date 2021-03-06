#!/bin/bash
# Compares baserom.gbc and pokecrystal.gbc

# create baserom.txt if necessary
if [ ! -f baserom.txt ]; then
    hexdump -C baserom.gbc > baserom.txt
fi

hexdump -C pokecrystal.gbc > pokecrystal.txt

diff baserom.txt pokecrystal.txt | less
