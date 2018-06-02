if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

set background=dark

let g:colors_name="otyn-colors"
"てきとうなので置きたいやつをここに置きます．==============
hi Normal           ctermfg=252 ctermbg=234
hi NonText          ctermfg=
hi Cursor           ctermfg=242
hi CursorLine                   ctermbg=235
hi CursorLineNr     ctermfg=037
hi LineNr           ctermfg=  ctermbg=
hi StatusLine       ctermfg=242  ctermbg=246
hi StatusLineNC     ctermfg=242  ctermbg=246
hi StatusLineTerm   ctermfg=
hi StatusLineTermNC ctermfg=
"hi FoldColumn      ctermfg=  ctermbg=
"""しんたっくすはいらいと=====================================

"めんどうなときはダブルクオーテーションが１つついているやつだけ定義すればなんとかなる。
"でもせっかくなのでできる限りぜんぶやります。

""定数・変数-----------------------
"hi Constant         ctermfg=
hi String           ctermfg=006
hi Character        ctermfg=051
hi Number           ctermfg=027
hi Float            ctermfg=039
hi Boolean          ctermfg=069
hi Function         ctermfg=197
""hoge文で使うやつ-----------------
"hi Statement        ctermfg=
hi Conditional      ctermfg=093
hi Repeat           ctermfg=010
hi Label            ctermfg=006
hi Operator         ctermfg=012
hi keyword          ctermfg=118               cterm=bold
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
hi Todo             ctermfg=030  ctermbg=190  cterm=bold
hi Ignore           ctermfg=  ctermbg=232
hi Error            ctermfg=001               cterm=bold cterm=underline
hi MatchParen       ctermfg=240  ctermbg=014

"default highlighting======================================
hi Title            ctermfg=010
hi Directory        ctermfg=039
"ぽっぷあっぷめにゅー-------------
hi Pmenu            ctermfg=  ctermbg=
hi PmenuSel         ctermfg=  ctermbg=
hi PmenuSbar                  ctermbg=
hi PmenuThumb       ctermfg=
"けんさく-------------------------
hi Search           ctermfg=221  ctermbg=202
hi IncSearch        ctermfg=221  ctermbg=202  cterm=bold
"さぶん---------------------------
hi DiffAdd          ctermfg=234 ctermbg=012
hi DiffChange       ctermfg=234 ctermbg=011
hi DiffDelete       ctermfg=234 ctermbg=009
hi DiffText                     ctermbg=014   cterm=bold
"すぺるかんけい-------------------
hi SpellBad         ctermfg=
hi SpellCap         ctermfg=
hi SpellLocal       ctermfg=
hi SpellRare        ctermfg
hi SpecialKey       ctermfg
hi WildMenu         ctermfg=  ctermbg=
"おりたたみ・かれんとういんどう---
hi Folded           ctermfg=  ctermbg=
hi FoldColumn       ctermfg=  ctermbg=
hi VertSplit        ctermfg=004  ctermbg=235
hi TabLine          ctermfg=
hi TabLineFill      ctermfg=
hi TabLineSel       ctermfg=
hi Cursorline       ctermfg=007
hi Undercurl        ctermfg=196         cterm=undercurl
"こまんどらいんにいる-------------
hi CursorColumn                 ctermbg=
hi ColorColumn                  ctermbg=
hi SignColumn       ctermfg=
hi Question         ctermfg=
hi Visual                      ctermbg=129
hi VisualNOS                   ctermbg=129
hi ModeMsg          ctermfg=036               cterm=bold
hi MoreMsg          ctermfg=030               cterm=bold
hi WarningMsg       ctermfg=233  ctermbg=220  cterm=bold
hi ErrorMsg         ctermfg=009               cterm=bold

