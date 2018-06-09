hi clear
if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

let g:colors_name = "otynium"

"pink    #ef69e2
"red     #ef7070
"orange  #e8a368
"yellow  #efdc4f
"green   #85c178
"cyan    #67d2e5
"blue    #6882e2
"purple  #b281d1
"gray1   #2c3a41
"gray2   #465457
"gray3   #4e5c63
"gray4   #658494 
"gray5   #aebbc5
"white   #dedee8
"black   #232526

hi Normal           guifg=#dedee8 guibg=#2c3a41
hi NonText          guifg=#465457
hi Cursor           guifg=#465457 guibg=#aebbc5
hi CursorLine                     guibg=#2c3a41
hi CursorLineNr     guifg=#76b9e0
hi LineNr           guifg=#465457 guibg=#2c3a41
hi StatusLine       guifg=#aebbc5 guibg=#465457
hi StatusLineNC     guifg=#2c3a41 guibg=#658494
hi StatusLineTerm   guifg=#aebbc5 guibg=#465457
hi StatusLineTermNC guifg=#2c3a41 guibg=#658494
"""しんたっくすはいらいと=====================================

"めんどうなときはダブルクオーテーションが１つついているやつだけ定義すればなんとかなるらしい。
"でもせっかくなのでできる限りぜんぶやります。

""定数・変数-----------------------
"hi Constant         guifg=
hi String           guifg=#85c178
hi Character        guifg=#85c178
hi Number           guifg=#e8a368
hi Float            guifg=#e8a368
hi Boolean          guifg=#e8a368
hi Indentifier      guifg=#ef7070
hi Function         guifg=#76b9e0
""hoge文で使うやつ-----------------
"hi Statement        guifg=
hi Conditional      guifg=#b281d1
hi Repeat           guifg=#b281d1
hi Label            guifg=#b281d1
hi Operator         guifg=#67d2e5
hi keyword          guifg=#b281d1
hi Exception        guifg=#efdc4f
""型-------------------------------
hi Type             guifg=#efdc4f
hi Typedef          guifg=#efdc4f
hi StorageClass     guifg=#e8a368
hi Structure        guifg=#e8a368
""ぷりぷろせっさー-----------------
"hi PreProc          guifg=
hi Include          guifg=#67d2e5
hi Define           guifg=#67d2e5
hi Macro            guifg=#67d2e5
hi PreCondit        guifg=#6882e2
""とくべつな文字とか--------------- 
hi Special          guifg=#e8a368
hi SpecialChar      guifg=#e8a368
hi SpecialComment   guifg=#ef7070
hi Debug            guifg=#ef7070
hi Delimiter        guifg=#e8a368
hi Tag              guifg=#6882e2

hi Underlined       guifg=#ef69e2
hi Comment          guifg=#4e5c63
hi Todo             guifg=#232526 guibg=#efdc4f
hi Ignore           guifg=#4e5c63
hi Error            guifg=#ef7070
hi MatchParen       guifg=#465457 guibg=#67d2e5

"default highlighting======================================
hi Title            guifg=#85c178
hi Directory        guifg=#6882e2
"""""ぽっぷあっぷめにゅー-------------
hi Pmenu            guifg=#dedee8
hi PmenuSel         guifg=#6882e2 guibg=#465457
hi PmenuSbar        guifg=#658494
hi PmenuThumb       guifg=#658494
"けんさく-------------------------
hi Search           guifg=#465457 guibg=#efdc4f
hi IncSearch        guifg=#2c3a41 guibg=#efdc4f
"さぶん---------------------------
hi DiffAdd          guifg=#67d2e5 guibg=#465457
hi DiffChange       guifg=#efdc4f guibg=#465457
hi DiffDelete       guifg=#ef7070 guibg=#465457
hi DiffText         guifg=#85c178 guibg=#465457
"すぺるかんけい-------------------
hi SpellBad         guifg=#ef7070
hi SpellCap         guifg=#6882e2
hi SpellLocal       guifg=#85c178
hi SpellRare        guifg=#465457 guibg=#efdc4f
hi SpecialKey       guifg=#465457
hi WildMenu         guifg=#6882e2
"おりたたみ・かれんとういんどう---
hi Folded           guifg=#658494 guibg=#2c3a41
hi FoldColumn       guifg=#658494 guibg=#2c3a41
hi VertSplit        guifg=#658494
hi TabLine          guifg=#658494 guibg=#465457
hi TabLineFill      guifg=#658494 guibg=#465457
hi TabLineSel       guifg=#e8a368 guibg=#4e5c63
"こまんどらいんにいる-------------
hi CursorColumn                   guibg=#2c3a41
hi ColorColumn                    guibg=#232526
hi SignColumn       guifg=#aebbc5 guibg=#2c3a41
hi Question         guifg=#67d2e5
hi Visual           guifg=#aebbc5 guibg=#4e5c63
hi VisualNOS        guifg=#aebbc5 guibg=#4e5c63
hi ModeMsg          guifg=#efdc4f
hi MoreMsg          guifg=#efdc4f
hi WarningMsg       guifg=#ef7070
hi ErrorMsg         guifg=#ef7070


""256-color terminal

"置きたいやつをここに置きました．==============
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
