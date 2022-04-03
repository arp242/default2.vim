" Generated by gen.py
hi clear
let g:colors_name = 'default2'
" Meta and special keys listed with ":map", also for text used to show
" unprintable characters in the text, 'listchars'. Generally: text that is
" displayed differently from what it really is.
hi SpecialKey       guifg=#0000ee
hi NonText          guifg=#aaaaaa
hi Directory        guifg=#0000ee
hi ErrorMsg         guifg=#ffffff        guibg=#cd0000
hi IncSearch        cterm=reverse
hi Search           guibg=#ffff00
hi MoreMsg          guifg=#00cd00
hi ModeMsg          cterm=bold
hi LineNr           guifg=#af5f00
hi CursorLineNr     guifg=#af5f00
hi Question         guifg=#00cd00
hi StatusLine       cterm=bold,reverse
hi StatusLineNC     cterm=reverse
hi VertSplit        cterm=reverse
hi Title            guifg=#cd00cd
hi Visual           guibg=#e5e5e5
hi VisualNOS        cterm=bold,underline
hi WarningMsg       guifg=#cd0000
hi WildMenu         guifg=#000000        guibg=#ffff00
hi Folded           guifg=#0000ee        guibg=#a8a8a8
hi FoldColumn       guifg=#0000ee        guibg=#a8a8a8
hi DiffAdd          guibg=#5fd7ff
hi DiffChange       guibg=#ffd7ff
hi DiffDelete       guifg=#5c5cff        guibg=#afffff

" Original of #ff0000 can be hard to read.
hi DiffText         cterm=bold           guibg=#ffaaaa

hi SignColumn       guifg=#0000ee        guibg=#a8a8a8
hi Conceal          guifg=#e5e5e5        guibg=#6c6c6c
hi SpellBad         guibg=#ffd7d7        guisp=Red
hi SpellCap         guibg=#5fd7ff        guisp=Blue
hi SpellRare        guibg=#ffd7ff        guisp=Magenta
hi SpellLocal       guibg=#00ffff        guisp=DarkCyan
hi Pmenu            guifg=#000000        guibg=#ffd7ff
hi PmenuSel         guifg=#000000        guibg=#e5e5e5
hi PmenuSbar        guibg=#a8a8a8
hi PmenuThumb       guibg=#000000
hi TabLine          cterm=NONE guifg=#000000  guibg=#e5e5e5
hi TabLineSel       cterm=bold
hi TabLineFill      cterm=reverse
hi CursorColumn     guibg=#e5e5e5
hi CursorLine       cterm=NONE

" Original of #ffd7d7 is a bit too intrusive for my liking.
hi ColorColumn guibg=#f0f0f0

hi StatusLineTerm   cterm=bold           guifg=#ffffff  guibg=#00cd00
hi StatusLineTermNC guifg=#ffffff        guibg=#00cd00
hi MatchParen       guibg=#00ffff
hi ToolbarLine      guibg=#e5e5e5
hi ToolbarButton    cterm=bold           guifg=#ffffff  guibg=#6c6c6c
hi Comment          guifg=#0000ee
hi Constant         guifg=#cd0000
hi Special          guifg=#cd00cd
hi Identifier       guifg=#008787
" hi clear Identifier
" hi clear Operator

" Original is #00cdcd, but that's quite bright IMHO; use this more muted colour.
hi Statement        guifg=#af5f00

hi PreProc          guifg=#cd00cd
hi Type             guifg=#009d00
hi Underlined       cterm=underline      guifg=#cd00cd
hi Ignore           guifg=#ffffff
hi Error            guifg=#ffffff        guibg=#ff0000
hi Todo             guifg=#000000        guibg=#ffff00
