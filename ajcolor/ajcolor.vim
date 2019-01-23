" Vim color file
"
" Author: Tomas Restrepo <tomas@winterdom.com>
" https://github.com/tomasr/molokai
"
" Note: Based on the Monokai theme for TextMate
" by Wimer Hazenberg and its darker variant
" by Hamish Stuart Macpherson
"


hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name="ajcolor"

" Support for 256-color terminal
   hi Normal          ctermfg=249 ctermbg=black
   hi Comment         ctermfg=167 cterm=none

   hi Boolean         ctermfg=255
   hi Character       ctermfg=213
   hi Number          ctermfg=135
   hi String          ctermfg=39
   hi Conditional     ctermfg=255               cterm=none
   hi Constant        ctermfg=135               cterm=bold
   hi Debug           ctermfg=225               cterm=bold
   hi Define          ctermfg=81
   hi Delimiter       ctermfg=241

   hi Keyword         ctermfg=255               cterm=bold
   hi Label           ctermfg=255               cterm=none
   hi Macro           ctermfg=217               cterm=underline
   hi SpecialKey      ctermfg=81

   hi Directory       ctermfg=118               cterm=bold
   hi Error           ctermfg=219 ctermbg=89
   hi ErrorMsg        ctermfg=199 ctermbg=16    cterm=bold
   hi Exception       ctermfg=118               cterm=bold
   hi Float           ctermfg=135
   hi FoldColumn      ctermfg=67  ctermbg=16
   hi Folded          ctermfg=67  ctermbg=16
   hi Function        ctermfg=249
   hi Identifier      ctermfg=145               cterm=none
   hi Ignore          ctermfg=244 ctermbg=232
   hi IncSearch       ctermfg=193 ctermbg=16


   hi Statement       ctermfg=255               cterm=none
   hi StatusLine      ctermfg=238 ctermbg=253
   hi StatusLineNC    ctermfg=244 ctermbg=232
   hi StorageClass    ctermfg=255
   hi Structure       ctermfg=255
   hi Tag             ctermfg=161
   hi Title           ctermfg=166
   hi Todo            ctermfg=231 ctermbg=232   cterm=bold

   hi Typedef         ctermfg=82
   hi Type            ctermfg=255                cterm=none
   hi Underlined      ctermfg=244               cterm=underline

   hi MatchParen      ctermfg=233  ctermbg=196 cterm=bold
   hi ModeMsg         ctermfg=229
   hi MoreMsg         ctermfg=229
   hi Operator        ctermfg=255

   hi VertSplit       ctermfg=244 ctermbg=232   cterm=bold
   hi VisualNOS                   ctermbg=238
   hi Visual                      ctermbg=243   cterm=reverse
   hi WarningMsg      ctermfg=231 ctermbg=238   cterm=bold
   hi WildMenu        ctermfg=81  ctermbg=16
   hi SpecialKey      ctermfg=white
   " cursor line and column, and left side
   hi Cursor          ctermfg=168  ctermbg=168
   hi CursorIM        ctermfg=168  ctermbg=168
   hi CursorColumn                ctermbg=236
   hi ColorColumn                 ctermbg=236
   hi LineNr          ctermfg=238 ctermbg=0
   hi NonText         ctermfg=59
   hi CursorLine      ctermbg=235   cterm=none
   hi CursorLineNr    ctermfg=196               cterm=none

   " complete menu
   hi Pmenu           ctermfg=81  ctermbg=236
   hi PmenuSel        ctermfg=255 ctermbg=242
   hi PmenuSbar                   ctermbg=232
   hi PmenuThumb      ctermfg=81

   hi PreCondit       ctermfg=217               cterm=underline
   hi PreProc         ctermfg=217               cterm=underline
   hi Question        ctermfg=82
   hi Repeat          ctermfg=255               cterm=none
   hi Search          ctermfg=0   ctermbg=222   cterm=NONE

   " diff
   hi DiffAdd                     ctermbg=24
   hi DiffChange      ctermfg=181 ctermbg=239
   hi DiffDelete      ctermfg=162 ctermbg=53
   hi DiffText                    ctermbg=102 cterm=bold

   " marks column
   hi SignColumn      ctermfg=118 ctermbg=235
   hi SpecialChar     ctermfg=126               cterm=none
   hi SpecialComment  ctermfg=245               cterm=bold
   hi Special         ctermfg=81
   if has("spell")
       hi SpellBad                ctermbg=52
       hi SpellCap                ctermbg=17
       hi SpellLocal              ctermbg=17
       hi SpellRare  ctermfg=none ctermbg=none  cterm=reverse
   endif

   " custom special characters, like []{},;:+-=. etc
   hi cUserSpecialCharacter ctermfg=37 
   hi cUserSpecialCharacter2 ctermfg=40
   hi cUserSpecialCharacter3 ctermfg=40
   hi cUserSpecialCharacter4 ctermfg=119 
   hi cUserSpecialCharacter5 ctermfg=126



" Must be at the end, because of ctermbg=234 bug.
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark
