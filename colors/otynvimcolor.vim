hi clear
if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

let g:colors_name = "otynvimcolor"

hi Normal          guifg=#F8F8F2 guibg=#1B1D1E
hi Comment         guifg=#7E8E91
hi CursorLine                    guibg=#293739
hi CursorLineNr    guifg=#FD971F               gui=none
hi CursorColumn                  guibg=#293739
hi ColorColumn                   guibg=#232526
hi LineNr          guifg=#465457 guibg=#232526
hi NonText         guifg=#465457
hi SpecialKey      guifg=#465457

"てきとうなので置きたいやつをここに置きます．==============
hi Normal           ctermfg=252 ctermbg=235
hi NonText          ctermfg=000 ctermbg=235
hi Cursor           ctermfg=242 ctermbg=244
hi CursorLine       ctermfg=000 ctermbg=235
hi CursorLineNr     ctermfg=033 ctermbg=235
hi LineNr           ctermfg=245 ctermbg=235
hi StatusLine       ctermfg=242 ctermbg=246
hi StatusLineNC     ctermfg=242 ctermbg=246
hi StatusLineTerm   ctermfg=230 ctermbg=235
hi StatusLineTermNC ctermfg=230 ctermbg=235
"hi FoldColumn      ctermfg=  ctermbg=
"""しんたっくすはいらいと=====================================

"めんどうなときはダブルクオーテーションが１つついているやつだけ定義すればなんとかなるらしい。
"でもせっかくなのでできる限りぜんぶやります。

""定数・変数-----------------------
"hi Constant         ctermfg=
hi String           ctermfg=006
hi Character        ctermfg=051
hi Number           ctermfg=027
hi Float            ctermfg=030
hi Boolean          ctermfg=069
hi Function         ctermfg=197
""hoge文で使うやつ-----------------
"hi Statement        ctermfg=
hi Conditional      ctermfg=093
hi Repeat           ctermfg=010
hi Label            ctermfg=006
hi Operator         ctermfg=012
hi keyword          ctermfg=118
hi Exception        ctermfg=011
""型-------------------------------
"hi Type             ctermfg=011
hi Typedef          ctermfg=003
hi StorageClass     ctermfg=003
hi Structure        ctermfg=003
""ぷりぷろせっさー-----------------
"hi PreProc          ctermfg=031
hi Include          ctermfg=039
hi Define           ctermfg=035
hi Macro            ctermfg=035
hi PreCondit        ctermfg=030
""とくべつな文字とか--------------- 
"hi Special          ctermfg=
hi SpecialChar      ctermfg=246
hi SpecialComment   ctermfg=246
hi Debug            ctermfg=246
hi Delimiter        ctermfg=009
hi Tag              ctermfg=170

hi Underlined       ctermfg=118
hi Comment          ctermfg=060
hi Todo             ctermfg=030 ctermbg=190
hi Ignore           ctermfg=230 ctermbg=232
hi Error            ctermfg=001 ctermbg=235
hi MatchParen       ctermfg=240 ctermbg=014

"default highlighting======================================
hi Title            ctermfg=010
hi Directory        ctermfg=039
"""""ぽっぷあっぷめにゅー-------------
hi Pmenu            ctermfg=231
hi PmenuSel         ctermfg=231
hi PmenuSbar        ctermfg=231
hi PmenuThumb       ctermfg=231
"けんさく-------------------------
hi Search           ctermfg=221 ctermbg=202
hi IncSearch        ctermfg=221 ctermbg=202
"さぶん---------------------------
hi DiffAdd          ctermfg=234 ctermbg=012
hi DiffChange       ctermfg=234 ctermbg=011
hi DiffDelete       ctermfg=234 ctermbg=009
hi DiffText                     ctermbg=014
"すぺるかんけい-------------------
hi SpellBad         ctermfg=230
hi SpellCap         ctermfg=230
hi SpellLocal       ctermfg=230
hi SpellRare        ctermfg=230
hi SpecialKey       ctermfg=230
hi WildMenu         ctermfg=230
"おりたたみ・かれんとういんどう---
hi Folded           ctermfg=245
hi FoldColumn       ctermfg=245
hi VertSplit        ctermfg=004
hi TabLine          ctermfg=033
hi TabLineFill      ctermfg=033
hi TabLineSel       ctermfg=033
hi Cursorline       ctermfg=007
"こまんどらいんにいる-------------
hi CursorColumn     ctermfg=230
hi ColorColumn      ctermfg=230
hi SignColumn       ctermfg=230
hi Question         ctermfg=230
hi Visual           ctermfg=230
hi VisualNOS        ctermfg=230 ctermbg=129
hi ModeMsg          ctermfg=036
hi MoreMsg          ctermfg=030
hi WarningMsg       ctermfg=233
hi ErrorMsg         ctermfg=009

set background=dark 
