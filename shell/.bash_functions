#!/bin/bash

# Display ANSI 16 colors - doesn't work atm
printcolors () {
  for i in {0..15}; do
    printf "\x1b[48;5;%sm%3d\e[0m " "$i" "$i";
    if (( i == 15 )) || (( i > 15 )) && (( (i-15) % 6 == 0 )); then
      printf "\n";
    fi
  done
}
