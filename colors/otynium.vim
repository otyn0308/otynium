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
"
"gray1   #222c33
"gray2   #314047
"gray3   #506872
"gray4   #5f7b87
"gray5   #7395a3
"
"white   #a9afb2
"black   #232526

hi Normal           guifg=#a9afb2 guibg=#222c33
hi NonText          guifg=#314047
hi Cursor           guifg=#314047 guibg=#506872 gui=none
hi CursorLine                     guibg=#314047 gui=none cterm=none
hi CursorLineNr     guifg=#67d2e5 guibg=#314047 gui=none
hi CursorColumn                   guibg=#314047 
hi LineNr           guifg=#314047
hi StatusLine       guifg=#7395a3 guibg=#314047
hi StatusLineNC     guifg=#222c33 guibg=#5f7b87
hi StatusLineTerm   guifg=#7395a3 guibg=#314047
hi StatusLineTermNC guifg=#222c33 guibg=#5f7b87
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
hi Comment          guifg=#5f7b87
hi Todo             guifg=#222c33 guibg=#e0be62
hi Ignore           guifg=#506872
hi Error            guifg=#ef7070
hi MatchParen       guifg=#314047 guibg=#67d2e5

"default highlighting======================================
hi Title            guifg=#85c178
hi Directory        guifg=#6882e2
"""""ぽっぷあっぷめにゅー-------------
hi Pmenu            guifg=#a9afb2
hi PmenuSel         guifg=#6882e2 guibg=#314047
hi PmenuSbar        guifg=#5f7b87
hi PmenuThumb       guifg=#5f7b87
"けんさく-------------------------
hi Search           guifg=#314047 guibg=#e0be62
hi IncSearch        guifg=#222c33 guibg=#e0be62
"さぶん---------------------------
hi DiffAdd          guifg=#67d2e5 guibg=#314047
hi DiffChange       guifg=#e0be62 guibg=#314047
hi DiffDelete       guifg=#ef7070 guibg=#314047
hi DiffText         guifg=#85c178 guibg=#314047
"すぺるかんけい-------------------
hi SpellBad         guifg=#ef7070
hi SpellCap         guifg=#6882e2
hi SpellLocal       guifg=#85c178
hi SpellRare        guifg=#314047 guibg=#e0be62
hi SpecialKey       guifg=#314047
hi WildMenu         guifg=#6882e2
"おりたたみ・かれんとういんどう---
hi Folded           guifg=#5f7b87 guibg=#222c33
hi FoldColumn       guifg=#5f7b87 guibg=#222c33
hi VertSplit        guifg=#5f7b87
hi TabLine          guifg=#5f7b87 guibg=#314047
hi TabLineFill      guifg=#5f7b87 guibg=#314047
hi TabLineSel       guifg=#e8a368 guibg=#506872
"こまんどらいんにいる-------------
hi ColorColumn                    guibg=#222c33
hi SignColumn       guifg=#7395a3 guibg=#222c33
hi Question         guifg=#67d2e5
hi Visual           guifg=#7395a3 guibg=#506872
hi VisualNOS        guifg=#7395a3 guibg=#506872
hi ModeMsg          guifg=#e0be62
hi MoreMsg          guifg=#e0be62
hi WarningMsg       guifg=#ef7070
hi ErrorMsg         guifg=#ef7070

set background=dark 
