if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

set background=dark

let g:colors_name='otyn-colors'

hi Normal       ctermfg=252 ctermbg=234
hi Cursor       ctermfg=242
hi CursorLine               ctermbg=235
hi CursorLineNr ctermfg=037

