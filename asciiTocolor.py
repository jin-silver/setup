#!/usr/bin/python3

from random import randint
with open('groot', 'r') as f:
    lines = f.readlines()

# form = '\x1b[0;31m'
colors = [f"\x1b[0;{x}m" for x in range(90, 97)]


with open('groot', 'w') as f:
    for line in lines:
        for z in line.strip():
            form = colors[randint(0, 6)]
            x = form + z + '\x1b[0m'
            print(x, end='', file=f)
            print(x, end='')
        print(file=f)
        print()

