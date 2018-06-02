if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

set background=dark

let g:colors_name="otyn-colors"
"てきとうなので置きたいやつをここに置きます．==============
hi Normal          ctermfg=252 ctermbg=234
hi NonText         ctermfg=
hi Cursor          ctermfg=242
hi CursorLine                  ctermbg=235
hi CursorLineNr    ctermfg=037
hi LineNr          ctermfg=  ctermbg=
hi StatusLine      ctermfg=242  ctermbg=246
hi StatusLineNC    ctermfg=242  ctermbg=246
hi StatusLineTerm
hi StatusLineTermNC
"hi FoldColumn      ctermfg=  ctermbg=
"しんたっくすはいらいと=====================================
"定数・変数-----------------------
hi String          ctermfg=
hi Character       ctermfg=
hi Constant        ctermfg=
hi Number          ctermfg=
hi Float           ctermfg=
hi Boolean         ctermfg=
hi Function        ctermfg=
hi Identifier      ctermfg=
"hoge文で使うやつ-----------------
hi Statement       ctermfg= 
hi Conditional     ctermfg=
hi Repeat          ctermfg=
hi Label           ctermfg=
hi Operator        ctermfg=
hi keyword         ctermfg=118               cterm=bold
hi Exception       ctermfg= 
"型-------------------------------
hi Type            ctermfg=
hi Typedef         ctermfg=
hi StorageClass    ctermfg=
hi Structure       ctermfg=
"ぷりぷろせっさー-----------------
hi PreProc         ctermfg=
hi Include         ctermfg=
hi Define          ctermfg=
hi Macro           ctermfg=
hi PreCondit       ctermfg=
"とくべつな文字とか---------------
hi Special         ctermfg=
hi SpecialChar     ctermfg=
hi SpecialComment  ctermfg=
hi Debug           ctermfg=
hi Delimiter       ctermfg=
hi Tag             ctermfg=
hi Comment         ctermfg=060
hi Todo            ctermfg=030  ctermbg=190  cterm=bold
hi Ignore          ctermfg=  ctermbg=232

hi Error                                     cterm=undercurl
hi MatchParen      ctermfg=240  ctermbg=014

"default highlighting======================================
hi Title           ctermfg=010
hi Directory       ctermfg=
"ぽっぷあっぷめにゅー-------------
hi Pmenu           ctermfg=  ctermbg=
hi PmenuSel        ctermfg=  ctermbg=
hi PmenuSbar                   ctermbg=
hi PmenuThumb      ctermfg=
"けんさく-------------------------
hi Search          ctermfg=
hi IncSearch       ctermfg=  ctermbg=16
"さぶん---------------------------
hi DiffAdd         ctermfg=234 ctermbg=012
hi DiffChange      ctermfg=234 ctermbg=011
hi DiffDelete      ctermfg=234 ctermbg=009
hi DiffText                    ctermbg=014   cterm=bold
"すぺるかんけい-------------------
hi SpellBad
hi SpellCap
hi SpellLocal
hi SpellRare
hi SpecialKey
hi WildMenu        ctermfg=  ctermbg=
"おりたたみ・かれんとういんどう---
hi Folded          ctermfg=  ctermbg=
hi FoldColumn      ctermfg=  ctermbg=
hi VertSplit       ctermfg=004  ctermbg=235
hi TabLine
hi TabLineFill
hi TabLineSel
hi Cursorline      ctermfg=
hi Undercurl       ctermfg=196         cterm=undercurl
"こまんどらいんにいる-------------
hi CursorColumn                ctermbg=
hi ColorColumn                 ctermbg=
hi SignColumn
hi Question        ctermfg=
hi Visual                      ctermbg=
hi VisualNOS                   ctermbg=
hi ModeMsg         ctermfg=
hi MoreMsg         ctermfg=
hi WarningMsg      ctermfg=  ctermbg=   cterm=bold
hi ErrorMsg        ctermfg=196               cterm=bold

