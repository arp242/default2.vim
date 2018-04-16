#!/usr/bin/env python

import re
import subprocess

def go():
    subprocess.run([
        'vim', '--noplugins', '-u', 'NONE',
        '+:colorscheme default',
        '+:syntax on',
        '+:redir! > /tmp/x | :hi | redir end',
        '+:q'], check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

    inp = open('/tmp/x').readlines()

    out = []
    for line in inp:
        line = line.strip()
        if line == '':
            continue

        # Remove 'xxx' example, multiple spaces.
        line = re.sub(' +', ' ', line.replace(' xxx ', ' ')).split(' ')

        # EndOfBuffer    xxx links to NonText
        # Normal         xxx cleared
        if line[1] == 'links' or line[1] == 'cleared':
            continue

        add = [line[0]]
        for g in line[1:]:
            if g == 'cleared':
                continue
            n, color = g.split('=')

            # Copy cterm and guisp as-is.
            if n == 'cterm' or n == 'guisp':
                add.append(g)
            # Transate ctermfg and ctermbg to guifg and guibg.
            elif n == 'ctermfg' or n == 'ctermbg':
                add.append('{}={}'.format(n.replace('cterm', 'gui'), colors[int(color)]))
        if len(add) > 1:
            out.append(add)

    longest = [0] * 10
    for line in out:
        for i, col in enumerate(line):
            if len(col) > longest[i]:
                longest[i] = len(col)

    print('" Generated by gen.py')
    print('hi clear')
    print("let g:colors_name = 'default2'")

    for line in out:
        print('hi ', end='')
        for i, col in enumerate(line):
            print('{} {}'.format(col, ' ' * (longest[i] - len(col))), end='')
        print()

colors = [0] * 255
colors[0] = '#000000'
colors[1] = '#cd0000'
colors[2] = '#00cd00'
colors[3] = '#cdcd00'
colors[4] = '#0000ee'
colors[5] = '#cd00cd'
colors[6] = '#00cdcd'
colors[7] = '#e5e5e5'

colors[8] = '#000000'
colors[9] = '#ff0000'
colors[10] = '#00ff00'
colors[11] = '#ffff00'
colors[12] = '#5c5cff'
colors[13] = '#ff00ff'
colors[14] = '#00ffff'
colors[15] = '#ffffff'

colors[81] = '#5fd7ff'
colors[130] = '#af5f00'
colors[159] = '#afffff'
colors[224] = '#ffd7d7'
colors[225] = '#ffd7ff'
colors[242] = '#6c6c6c'
colors[248] = '#a8a8a8'
colors[254] = '#e4e4e4'

go()
