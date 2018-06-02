if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

set background=dark

let g:colors_name="otyn-colors"

hi Normal          ctermfg=252 ctermbg=234
hi Cursor          ctermfg=242
hi CursorLine                  ctermbg=235
hi CursorLineNr    ctermfg=037
"hi CursorColumn                ctermbg=
"hi FoldColumn      ctermfg=  ctermbg=
hi Boolean         ctermfg=
hi Character       ctermfg=
hi Number          ctermfg=
hi String          ctermfg=
hi Conditional     ctermfg=
hi Constant        ctermfg=
hi Debug           ctermfg=
hi Define          ctermfg=
hi Delimiter       ctermfg=
hi Comment         ctermfg=060

hi DiffAdd         ctermfg=234 ctermbg=012
hi DiffChange      ctermfg=234 ctermbg=011
hi DiffDelete      ctermfg=234 ctermbg=009
hi DiffText                    ctermbg=014   cterm=bold

hi Directory       ctermfg=
hi Error           ctermfg=  ctermbg=       cterm=undercurl
hi ErrorMsg        ctermfg=196               cterm=bold
hi Exception       ctermfg=
hi Float           ctermfg=
hi Folded          ctermfg=  ctermbg=
hi Function        ctermfg=
hi Identifier      ctermfg=
hi Ignore          ctermfg=  ctermbg=232
hi IncSearch       ctermfg=  ctermbg=16

hi keyword         ctermfg=118               cterm=bold
hi Label           ctermfg=               cterm=none
hi Macro           ctermfg=
hi SpecialKey      ctermfg=

hi MatchParen      ctermfg=240  ctermbg=014
hi ModeMsg         ctermfg=
hi MoreMsg         ctermfg=
hi Operator        ctermfg=

" complete menu
hi Pmenu           ctermfg=  ctermbg=
hi PmenuSel        ctermfg=  ctermbg=
hi PmenuSbar                   ctermbg=
hi PmenuThumb      ctermfg=

hi PreCondit       ctermfg=
hi PreProc         ctermfg=
hi Question        ctermfg=
hi Repeat          ctermfg=
hi Search          ctermfg=

" marks column
hi SignColumn      ctermfg=  ctermbg=
hi SpecialChar     ctermfg=
hi SpecialComment  ctermfg=
hi Special         ctermfg=
hi Statement       ctermfg=
hi StatusLine      ctermfg=  ctermbg=
hi StatusLineNC    ctermfg=  ctermbg=
hi StorageClass    ctermfg=
hi Structure       ctermfg=
hi Tag             ctermfg=
hi Title           ctermfg=
hi Todo            ctermfg=030  ctermbg=190  cterm=bold

hi Typedef         ctermfg=
hi Type            ctermfg=
hi Underlined      ctermfg=            cterm=underline
hi Undercurl       ctermfg=196         cterm=undercurl

hi VertSplit       ctermfg=004  ctermbg=235
hi VisualNOS                   ctermbg=
hi Visual                      ctermbg=
hi WarningMsg      ctermfg=  ctermbg=   cterm=bold
hi WildMenu        ctermfg=  ctermbg=

hi ColorColumn                 ctermbg=
hi LineNr          ctermfg=  ctermbg=
hi NonText         ctermfg=

hi SpecialKey      ctermfg=
