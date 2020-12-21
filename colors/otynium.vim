" Colorscheme initialization
"----------------------------------------------------------
hi clear
if version > 580
  hi clear 
  if exists("syntax_on") 
    syntax reset 
  endif 
endif

set background=dark
set termguicolors
"set t_Co=256
let g:colors_name = "otynium"

" Color palette
"----------------------------------------------------------
let s:red        = '#ef7070'
let s:red2       = '#8a1a1a'
let s:orange     = '#e8a368'
let s:yellow     = '#d8cf6c'
let s:yellow2    = '#e2d86a'
let s:green      = '#85c178'
let s:green2     = '#5cc46b'
let s:cyan       = '#64bac9'
let s:blue       = '#6882e2'
let s:purple     = '#b281d1'
let s:gray1      = '#222c33'
let s:gray2      = '#314047'
let s:gray3      = '#506872'
let s:gray4      = '#5f7b87'
let s:gray5      = '#7395a3'
let s:white      = '#a9afb2'
let s:black      = '#050a26'

function! s:HL(group, guifg, guibg, attr)
  if a:guifg != ''
    exec 'hi ' . a:group . ' guifg=' . a:guifg
  endif
  if a:guibg != ''
    exec 'hi ' . a:group . ' guibg=' . a:guibg
  endif
  if a:attr != ''
    exec 'hi ' . a:group . ' gui=' . a:attr . ' cterm=' . a:attr
  endif
endfun


" default highlighting======================================
call s:HL('Normal',           s:white,   s:gray1,  '')
call s:HL('NonText',          s:gray2,   '',       '')
call s:HL('Cursor',           s:gray2,   s:gray3,  'none')
call s:HL('CursorLine',       '',        s:gray2,  'none')
call s:HL('CursorLineNr',     s:cyan,    s:gray2,  'none')
call s:HL('CursorColumn',     '',        s:gray2,  '')
call s:HL('LineNr',           s:gray2,   '',       '')
call s:HL('StatusLine',       s:gray5,   s:gray2,  '')
call s:HL('StatusLineNC',     s:gray1,   s:gray4,  '')
call s:HL('StatusLineTerm',   s:gray5,   s:gray2,  '')
call s:HL('StatusLineTermNC', s:gray1,   s:gray4,  '')

call s:HL('Title',            s:green,   '',       '')
call s:HL('Directory',        s:blue,    '',       '')

call s:HL('Pmenu',            s:white,   s:black,  '')
call s:HL('PmenuSel',         s:white,   s:gray2,  '')
call s:HL('PmenuSbar',        s:gray3,   '',       '')
call s:HL('PmenuThumb',       s:gray4,   '',       '')

call s:HL('Search',           s:gray2,   s:yellow, '')
call s:HL('IncSearch',        s:gray1,   s:yellow, '')

call s:HL('DiffAdd',          s:cyan,    s:gray2,  '')
call s:HL('DiffChange',       s:yellow2, s:gray2,  '')
call s:HL('DiffDelete',       s:red,     s:gray2,  '')
call s:HL('DiffText',         s:green2,  s:gray2,  '')

call s:HL('SpellBad',         s:red,     '',       '')
call s:HL('SpellCap',         s:blue,    '',       '')
call s:HL('SpellLocal',       s:green,   '',       '')
call s:HL('SpellRare',        s:gray2,   s:yellow, '')
call s:HL('SpecialKey',       s:gray2,   '',       '')
call s:HL('WildMenu',         s:blue,    '',       '')

call s:HL('Folded',           s:gray4,   s:gray1,  '')
call s:HL('FoldColumn',       s:gray4,   s:gray1,  '')
call s:HL('VertSplit',        s:gray4,   '',       '')
call s:HL('TabLine',          s:gray4,   s:gray2,  '')
call s:HL('TabLineFill',      s:gray4,   s:gray2,  '')
call s:HL('TabLineSel',       s:orange,  s:gray3,  '')

call s:HL('ColorColumn',      '',        s:gray1,  '')
call s:HL('SignColumn',       s:gray5,   s:gray1,  '')
call s:HL('Question',         s:cyan,    '',       '')
call s:HL('Visual',           s:gray5,   s:gray3,  '')
call s:HL('VisualNOS',        s:gray5,   s:gray3,  '')
call s:HL('ModeMsg',          s:yellow,  '',       '')
call s:HL('MoreMsg',          s:yellow,  '',       '')
call s:HL('WarningMsg',       s:red,     '',       '')
call s:HL('ErrorMsg',         '',        s:red2,   '')

"syntax highright========================================
call s:HL('Constant',         s:orange,  '',       '')
call s:HL('String',           s:green,   '',       '')
call s:HL('Character',        s:green,   '',       '')
call s:HL('Number',           s:orange,  '',       '')
call s:HL('Float',            s:orange,  '',       '')
call s:HL('Boolean',          s:orange,  '',       '')
call s:HL('Identifier',       s:red,     '',       'none')
call s:HL('Function',         s:cyan,    '',       '')

call s:HL('Statement',        s:purple,  '',       '')
call s:HL('Conditional',      s:purple,  '',       '')
call s:HL('Repeat',           s:purple,  '',       '')
call s:HL('Label',            s:purple,  '',       '')
call s:HL('Operator',         s:blue,    '',       '')
call s:HL('keyword',          s:purple,  '',       '')
call s:HL('Exception',        s:yellow,  '',       '')

call s:HL('Type',             s:yellow,  '',       '')
call s:HL('StorageClass',     s:orange,  '',       '')
call s:HL('Structure',        s:orange,  '',       '')
call s:HL('Typedef',          s:yellow,  '',       '')

call s:HL('PreProc',          s:cyan,    '',       '')
call s:HL('Include',          s:cyan,    '',       '')
call s:HL('Define',           s:cyan,    '',       '')
call s:HL('Macro',            s:cyan,    '',       '')
call s:HL('PreCondit',        s:blue,    '',       '')

call s:HL('Special',          s:cyan,    '',       '')
call s:HL('SpecialChar',      s:cyan,    '',       '')
call s:HL('Tag',              s:blue,    '',       '')
call s:HL('Delimiter',        s:blue,    '',       '')
call s:HL('SpecialComment',   s:cyan,    '',       '')
call s:HL('Debug',            s:red,     '',       '')

call s:HL('Underlined',       s:red,     '',       '')
call s:HL('Comment',          s:gray4,   '',       '')
call s:HL('Todo',             s:gray1,   s:yellow, '')
call s:HL('Ignore',           s:gray3,   '',       '')
call s:HL('Error',            '',        s:red2,   '')
call s:HL('MatchParen',       s:gray2,   s:cyan,   '')

