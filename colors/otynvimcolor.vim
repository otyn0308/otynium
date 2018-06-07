hi clear
if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

let g:colors_name = "otynvimcolor"

hi Normal           guifg=#f8f8f2 guibg=#263238
hi NonText          guifg=#465457
hi Cursor           guifg= guibg=
hi CursorLine                     guibg=#293739
hi CursorLineNr     guifg=#70ace5
hi LineNr           guifg=#465457 guibg=#293739
hi StatusLine       guifg=#aebbc5 guibg=#425762
hi StatusLineNC     guifg=#2c3a41 guibg=#658494
hi StatusLineTerm   guifg= guibg=
hi StatusLineTermNC guifg= guibg=
"hi FoldColumn       guifg= guibg=
"""しんたっくすはいらいと=====================================

"めんどうなときはダブルクオーテーションが１つついているやつだけ定義すればなんとかなるらしい。
"でもせっかくなのでできる限りぜんぶやります。

""定数・変数-----------------------
"hi Constant         guifg=
hi String           guifg=
hi Character        guifg=
hi Number           guifg=
hi Float            guifg=
hi Boolean          guifg=
hi Function         guifg=
""hoge文で使うやつ-----------------
"hi Statement        guif
hi Conditional      guifg=
hi Repeat           guifg=
hi Label            guifg=
hi Operator         guifg=
hi keyword          guifg=
hi Exception        guifg=
""型-------------------------------
"hi Type             guifg=011
hi Typedef          guifg=
hi StorageClass     guifg=
hi Structure        guifg=
""ぷりぷろせっさー-----------------
"hi PreProc          guifg=031
hi Include          guifg=
hi Define           guifg=
hi Macro            guifg=
hi PreCondit        guifg=
""とくべつな文字とか--------------- 
"hi Special          guifg=
hi SpecialChar      guifg=
hi SpecialComment   guifg=
hi Debug            guifg=
hi Delimiter        guifg=
hi Tag              guifg=

hi Underlined       guifg=
hi Comment          guifg=#4e5c63
hi Todo             guifg= guibg=
hi Ignore           guifg= guibg=
hi Error            guifg= guibg=
hi MatchParen       guifg= guibg=

"default highlighting======================================
hi Title            guifg=
hi Directory        guifg=
"""""ぽっぷあっぷめにゅー-------------
hi Pmenu            guifg=
hi PmenuSel         guifg=
hi PmenuSbar        guifg=
hi PmenuThumb       guifg=
"けんさく-------------------------
hi Search           guifg= guibg=
hi IncSearch        guifg= guibg=
"さぶん---------------------------
hi DiffAdd          guifg= guibg=
hi DiffChange       guifg= guibg=
hi DiffDelete       guifg= guibg=
hi DiffText                guibg=
"すぺるかんけい-------------------
hi SpellBad         guifg=
hi SpellCap         guifg=
hi SpellLocal       guifg=
hi SpellRare        guifg=
hi SpecialKey       guifg=#465457
hi WildMenu         guifg=
"おりたたみ・かれんとういんどう---
hi Folded           guifg=
hi FoldColumn       guifg=
hi VertSplit        guifg=
hi TabLine          guifg=
hi TabLineFill      guifg=
hi TabLineSel       guifg=
hi Cursorline       guifg=
"こまんどらいんにいる-------------
hi CursorColumn            guibg=#293739
hi ColorColumn             guibg=#232526
hi SignColumn       guifg=
hi Question         guifg=
hi Visual           guifg=
hi VisualNOS        guifg= guibg=
hi ModeMsg          guifg=
hi MoreMsg          guifg=
hi WarningMsg       guifg=
hi ErrorMsg         guifg=


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
