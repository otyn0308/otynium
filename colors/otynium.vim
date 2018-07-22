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
"yellow  #d8cf6c
"green   #85c178
"cyan    #64bac9
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
hi CursorLineNr     guifg=#64bac9 guibg=#314047 gui=none
hi CursorColumn                   guibg=#314047 
hi LineNr           guifg=#314047
hi StatusLine       guifg=#7395a3 guibg=#314047
hi StatusLineNC     guifg=#222c33 guibg=#5f7b87
hi StatusLineTerm   guifg=#7395a3 guibg=#314047
hi StatusLineTermNC guifg=#222c33 guibg=#5f7b87
"""syntax highright========================================

"めんどうなときは基本仕切りのすぐ下のやつを定義すればなんとかなるらしい．

""定数-----------------------------
hi Constant         guifg=#e8a368
hi String           guifg=#85c178
hi Character        guifg=#85c178
hi Number           guifg=#e8a368
hi Float            guifg=#e8a368
hi Boolean          guifg=#e8a368
""変数・関数-----------------------
hi Identifier       guifg=#ef7070               gui=none cterm=none
hi Function         guifg=#76b9e0
""hoge文で使うやつ-----------------
hi Statement        guifg=#b281d1
hi Conditional      guifg=#b281d1
hi Repeat           guifg=#b281d1
hi Label            guifg=#b281d1
hi Operator         guifg=#6882e2
hi keyword          guifg=#b281d1
hi Exception        guifg=#d8cf6c
""型-------------------------------
hi Type             guifg=#d8cf6c
hi Typedef          guifg=#d8cf6c
hi StorageClass     guifg=#e8a368
hi Structure        guifg=#e8a368
""フリプロセッサー-----------------
hi PreProc          guifg=#64bac9
hi Include          guifg=#64bac9
hi Define           guifg=#64bac9
hi Macro            guifg=#64bac9
hi PreCondit        guifg=#6882e2
""クオーテーションとか-------------
hi Special          guifg=#64bac9
hi SpecialChar      guifg=#64bac9
hi SpecialComment   guifg=#64bac9
hi Debug            guifg=#ef7070
hi Delimiter        guifg=#6882e2
hi Tag              guifg=#6882e2


hi Underlined       guifg=#ef69e2
hi Comment          guifg=#5f7b87
hi Todo             guifg=#222c33 guibg=#d8cf6c
hi Ignore           guifg=#506872
hi Error            guifg=#ef7070
hi MatchParen       guifg=#314047 guibg=#64bac9

"default highlighting======================================
hi Title            guifg=#85c178
hi Directory        guifg=#6882e2
"ポップアップメニュー-------------
hi Pmenu            guifg=#a9afb2
hi PmenuSel         guifg=#6882e2 guibg=#314047
hi PmenuSbar        guifg=#5f7b87
hi PmenuThumb       guifg=#5f7b87
"検索---- ------------------------
hi Search           guifg=#314047 guibg=#d8cf6c
hi IncSearch        guifg=#222c33 guibg=#d8cf6c
"差分-----------------------------
hi DiffAdd          guifg=#64bac9 guibg=#314047
hi DiffChange       guifg=#d8cf6c guibg=#314047
hi DiffDelete       guifg=#ef7070 guibg=#314047
hi DiffText         guifg=#85c178 guibg=#314047
"スペル関係-----------------------
hi SpellBad         guifg=#ef7070
hi SpellCap         guifg=#6882e2
hi SpellLocal       guifg=#85c178
hi SpellRare        guifg=#314047 guibg=#d8cf6c
hi SpecialKey       guifg=#314047
hi WildMenu         guifg=#6882e2
"折りたたみ・カレントウィンドウ---
hi Folded           guifg=#5f7b87 guibg=#222c33
hi FoldColumn       guifg=#5f7b87 guibg=#222c33
hi VertSplit        guifg=#5f7b87
hi TabLine          guifg=#5f7b87 guibg=#314047
hi TabLineFill      guifg=#5f7b87 guibg=#314047
hi TabLineSel       guifg=#e8a368 guibg=#506872
"コマンドライン周り---------------
hi ColorColumn                    guibg=#222c33
hi SignColumn       guifg=#7395a3 guibg=#222c33
hi Question         guifg=#64bac9
hi Visual           guifg=#7395a3 guibg=#506872
hi VisualNOS        guifg=#7395a3 guibg=#506872
hi ModeMsg          guifg=#d8cf6c
hi MoreMsg          guifg=#d8cf6c
hi WarningMsg       guifg=#ef7070
hi ErrorMsg         guifg=#ef7070

set background=dark 
