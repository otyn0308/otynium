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
let s:red        = '#d75f5f'
let s:red2       = '#870000'
let s:orange     = '#ffaf5f'
let s:yellow     = '#d7d75f'
let s:yellow2    = '#d7d700'
let s:green      = '#87af87'
let s:green2     = '#5faf5f'
let s:cyan       = '#5fafd7'
let s:blue       = '#5f87ff'
let s:purple     = '#af87ff'
let s:gray1      = '#262626'
let s:gray2      = '#303030'
let s:gray3      = '#4e4e4e'
let s:gray4      = '#585858'
let s:gray5      = '#767676'
let s:white      = '#a8a8a8'
let s:black      = '#00005f'

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


"  default highlighting======================================
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
call s:HL('Keyword',          s:purple,  '',       '')
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

call s:HL('Warning',          s:orange,  '',       '')
call s:HL('Hint',             '',   s:gray3,       '')
call s:HL('HintMsg',          s:gray3,   '',       '')
call s:HL('Info',             '',    s:cyan,       '')
call s:HL('InfoMsg',          s:cyan,    '',       '')

" coc.nvim ==============================================
call s:HL('CocErrorHighlight',   '',  '', 'underline')
call s:HL('CocWarningHighlight', '',  '', 'underline')
call s:HL('CocHintHighlight',    '',  '', 'underline')
call s:HL('CocInfoHighlight',    '',  '', 'underline')

" ALE ===================================================
hi link ALEErrorSign ErrorMsg
hi link ALEWarningSign WarningMsg

" LSP ===================================================

hi link LspDiagnosticsDefaultError Error
hi link LspDiagnosticsUnderlineError CocErrorHighlight
hi link LspDiagnosticsFloatingError ErrorMsg
hi link LspDiagnosticsSignError LspDiagnosticsFloatingError

hi link LspDiagnosticsDefaultWarning Warning
hi link LspDiagnosticsUnderlineWarning CocWarningHighlight
hi link LspDiagnosticsFloatingWarning WarningMsg
hi link LspDiagnosticsSignWarning LspDiagnosticsFloatingWarning

hi link LspDiagnosticsDefaultHint Hint
hi link LspDiagnosticsUnderlineHint CocHintHighlight
hi link LspDiagnosticsFloatingHint HintMsg
hi link LspDiagnosticsSignHint LspDiagnosticsFloatingHint

hi link LspDiagnosticsDefaultInformation Information
hi link LspDiagnosticsUnderlineInformation CocInfoHighlight
hi link LspDiagnosticsFloatingInformation InformationMsg
hi link LspDiagnosticsSignInformation LspDiagnosticsFloatingInformation

" TreeSitter ============================================
hi link TSError Error
hi link TSPunctDelimiter Delimiter
hi link TSPunctBracket Normal
hi link TSPunctSpecial Special

hi link TSConstant Constant
hi link TSString String
hi link TSStringRegex String
hi link TSStringEscape String
hi link TSCharacter Character
hi link TSNumber Number
hi link TSFloat Float
hi link TSBoolean Boolean
hi link TSAnnotation Function
hi link TSAttribute Title
hi link TSNamespace Title

hi link TSFuncBuiltin Function
hi link TSFunction Function
hi link TSFuncMacro PreProc
hi link TSParameter Type
hi link TSParameterReference TSParameter
hi link TSMethod Function
hi link TSField TSParameter
hi link TSProperty TSParameter
hi link TSConstructor Function

hi link TSConditional Conditional
hi link TSRepeat Repeat
hi link TSLabel Label

hi link TSKeyword Keyword
hi link TSKeywordFunction Keyword
hi link TSKeywordOperator Operator
hi link TSOperator Operator
hi link TSException Exception
hi link TSType Type
hi link TSTypeBuiltin Type
hi link TSStructure Structure
hi link TSInclude Include

call s:HL('TSVariable',     s:cyan,      '',          '')
hi link TSVariableBuiltin TSVariable
hi link TSText Normal
call s:HL('TSStrong',       s:white, s:gray1,      'bold')
hi link TSEmphasis TSStrong
call s:HL('TSStrong',       s:white, s:gray1, 'underline')
hi link TSTitle Title
call s:HL('TSLiteral',      s:orange,    '',          '')
call s:HL('TSURI',          s:orange,    '',          '')

hi link TSTag Tag
call s:HL('TSTagDelimiter', s:gray4,     '',          '')

" html and markdown ======================================
call s:HL('markdownH1',             s:white,  '', 'bold')
call s:HL('markdownH2',             s:white,  '', 'bold')
call s:HL('markdownH3',             s:white,  '', 'bold')
call s:HL('markdownH4',             s:white,  '', 'bold')
call s:HL('markdownH5',             s:white,  '', 'bold')
call s:HL('markdownH6',             s:white,  '', 'bold')
call s:HL('markdownBold'   ,        s:white,  '', 'bold')
call s:HL('markdownItalic' ,        s:white,  '', 'italic')
call s:HL('markdownBoldItalic',     s:white,  '', 'italic,bold')
