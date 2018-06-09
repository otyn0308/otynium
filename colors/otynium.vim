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
"yellow  #e0be62
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
hi Cursor           guifg=#465457 guibg=#658494 gui=none
hi CursorLine                     guibg=#465457 gui=none cterm=none
hi CursorLineNr     guifg=#67d2e5 guibg=#465457 gui=none
hi CursorColumn                   guibg=#465457 
hi LineNr           guifg=#465457
hi StatusLine       guifg=#aebbc5 guibg=#465457
hi StatusLineNC     guifg=#2c3a41 guibg=#658494
hi StatusLineTerm   guifg=#aebbc5 guibg=#465457
hi StatusLineTermNC guifg=#2c3a41 guibg=#658494
"""しんたっくすはいらいと=====================================

"めんどうなときはダブルクオーテーションが１つついているやつだけ定義すればなんとかなるらしい。
"でもせっかくなのでできる限りぜんぶやります。

""定数・変数-----------------------
hi Constant         guifg=#e8a368
hi String           guifg=#85c178
hi Character        guifg=#85c178
hi Number           guifg=#e8a368
hi Float            guifg=#e8a368
hi Boolean          guifg=#e8a368
hi Identifier       guifg=#6882e2               gui=none cterm=none
hi Function         guifg=#76b9e0
""hoge文で使うやつ-----------------
hi Statement        guifg=#b281d1
hi Conditional      guifg=#b281d1
hi Repeat           guifg=#b281d1
hi Label            guifg=#b281d1
hi Operator         guifg=#67d2e5
hi keyword          guifg=#b281d1
hi Exception        guifg=#e0be62
""型-------------------------------
hi Type             guifg=#e0be62
hi Typedef          guifg=#e0be62
hi StorageClass     guifg=#e8a368
hi Structure        guifg=#e8a368
""ぷりぷろせっさー-----------------
hi PreProc          guifg=#67d2e5
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
hi Comment          guifg=#658494
hi Todo             guifg=#232526 guibg=#e0be62
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
hi Search           guifg=#465457 guibg=#e0be62
hi IncSearch        guifg=#2c3a41 guibg=#e0be62
"さぶん---------------------------
hi DiffAdd          guifg=#67d2e5 guibg=#465457
hi DiffChange       guifg=#e0be62 guibg=#465457
hi DiffDelete       guifg=#ef7070 guibg=#465457
hi DiffText         guifg=#85c178 guibg=#465457
"すぺるかんけい-------------------
hi SpellBad         guifg=#ef7070
hi SpellCap         guifg=#6882e2
hi SpellLocal       guifg=#85c178
hi SpellRare        guifg=#465457 guibg=#e0be62
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
hi ColorColumn                    guibg=#232526
hi SignColumn       guifg=#aebbc5 guibg=#2c3a41
hi Question         guifg=#67d2e5
hi Visual           guifg=#aebbc5 guibg=#4e5c63
hi VisualNOS        guifg=#aebbc5 guibg=#4e5c63
hi ModeMsg          guifg=#e0be62
hi MoreMsg          guifg=#e0be62
hi WarningMsg       guifg=#ef7070
hi ErrorMsg         guifg=#ef7070

set background=dark 
