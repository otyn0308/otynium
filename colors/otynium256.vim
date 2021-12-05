hi clear
if version > 580
  hi clear 
  if exists("syntax_on") 
    syntax reset 
  endif 
endif

set background=dark
set termguicolors
let g:colors_name = 'otynium256'
hi Normal guifg=#a8a8a8 guibg=#262626
hi NonText guifg=#303030
hi Cursor guifg=#303030 guibg=#4e4e4e gui=none cterm=none
hi CursorLine guibg=#303030 gui=none cterm=none
hi CursorLineNr guifg=#5fafd7 guibg=#303030 gui=none cterm=none
hi CursorColumn guibg=#303030
hi LineNr guifg=#303030
hi StatusLine guifg=#767676 guibg=#303030
hi StatusLineNC guifg=#262626 guibg=#585858
hi StatusLineTerm guifg=#767676 guibg=#303030
hi StatusLineTermNC guifg=#262626 guibg=#585858
hi Title guifg=#87af87
hi Directory guifg=#5f87ff
hi Pmenu guifg=#a8a8a8 guibg=#00005f
hi PmenuSel guifg=#a8a8a8 guibg=#303030
hi PmenuSbar guifg=#4e4e4e
hi PmenuThumb guifg=#585858
hi Search guifg=#303030 guibg=#d7d75f
hi IncSearch guifg=#262626 guibg=#d7d75f
hi DiffAdd guifg=#5fafd7 guibg=#303030
hi DiffChange guifg=#d7d700 guibg=#303030
hi DiffDelete guifg=#d75f5f guibg=#303030
hi DiffText guifg=#5faf5f guibg=#303030
hi SpellBad guifg=#d75f5f
hi SpellCap guifg=#5f87ff
hi SpellLocal guifg=#87af87
hi SpellRare guifg=#303030 guibg=#d7d75f
hi SpecialKey guifg=#303030
hi WildMenu guifg=#5f87ff
hi Folded guifg=#585858 guibg=#262626
hi FoldColumn guifg=#585858 guibg=#262626
hi VertSplit guifg=#585858
hi TabLine guifg=#585858 guibg=#303030
hi TabLineFill guifg=#585858 guibg=#303030
hi TabLineSel guifg=#ffaf5f guibg=#4e4e4e
hi ColorColumn guibg=#262626
hi SignColumn guifg=#767676 guibg=#262626
hi Question guifg=#5fafd7
hi Visual guifg=#767676 guibg=#4e4e4e
hi VisualNOS guifg=#767676 guibg=#4e4e4e
hi ModeMsg guifg=#d7d75f
hi MoreMsg guifg=#d7d75f
hi WarningMsg guifg=#d75f5f
hi ErrorMsg guibg=#870000
hi Constant guifg=#ffaf5f
hi String guifg=#87af87
hi Character guifg=#87af87
hi Number guifg=#ffaf5f
hi Float guifg=#ffaf5f
hi Boolean guifg=#ffaf5f
hi Identifier guifg=#d75f5f gui=none cterm=none
hi Function guifg=#5fafd7
hi Statement guifg=#af87ff
hi Conditional guifg=#af87ff
hi Repeat guifg=#af87ff
hi Label guifg=#af87ff
hi Operator guifg=#5f87ff
hi Keyword guifg=#af87ff
hi Exception guifg=#d7d75f
hi Type guifg=#d7d75f
hi StorageClass guifg=#ffaf5f
hi Structure guifg=#ffaf5f
hi Typedef guifg=#d7d75f
hi PreProc guifg=#5fafd7
hi Include guifg=#5fafd7
hi Define guifg=#5fafd7
hi Macro guifg=#5fafd7
hi PreCondit guifg=#5f87ff
hi Special guifg=#5fafd7
hi SpecialChar guifg=#5fafd7
hi Tag guifg=#5f87ff
hi Delimiter guifg=#5f87ff
hi SpecialComment guifg=#5fafd7
hi Debug guifg=#d75f5f
hi Underlined guifg=#d75f5f
hi Comment guifg=#585858
hi Todo guifg=#262626 guibg=#d7d75f
hi Ignore guifg=#4e4e4e
hi Error guibg=#870000
hi MatchParen guifg=#303030 guibg=#5fafd7
hi Warning guifg=#ffaf5f
hi hint guibg=#4e4e4e
hi hintMsg guifg=#4e4e4e
hi Info guibg=#5fafd7
hi InfoMsg guifg=#5fafd7
hi CocErrorhighlight gui=underline cterm=underline
hi CocWarninghighlight gui=underline cterm=underline
hi Cochinthighlight gui=underline cterm=underline
hi CocInfohighlight gui=underline cterm=underline
hi link ALEErrorSign ErrorMsg
hi link ALEWarningSign WarningMsg
hi link LspDiagnosticsDefaultError Error
hi link LspDiagnosticsUnderlineError CocErrorhighlight
hi link LspDiagnosticsFloatingError ErrorMsg
hi link LspDiagnosticsSignError LspDiagnosticsFloatingError
hi link LspDiagnosticsDefaultWarning Warning
hi link LspDiagnosticsUnderlineWarning CocWarninghighlight
hi link LspDiagnosticsFloatingWarning WarningMsg
hi link LspDiagnosticsSignWarning LspDiagnosticsFloatingWarning
hi link LspDiagnosticsDefaulthint hint
hi link LspDiagnosticsUnderlinehint Cochinthighlight
hi link LspDiagnosticsFloatinghint hintMsg
hi link LspDiagnosticsSignhint LspDiagnosticsFloatinghint
hi link LspDiagnosticsDefaultInformation Information
hi link LspDiagnosticsUnderlineInformation CocInfohighlight
hi link LspDiagnosticsFloatingInformation InformationMsg
hi link LspDiagnosticsSignInformation LspDiagnosticsFloatingInformation
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
hi TSVariable guifg=#5fafd7
hi link TSVariableBuiltin TSVariable
hi link TSText Normal
hi TSStrong guifg=#a8a8a8 guibg=#262626 gui=underline cterm=underline
hi link TSEmphasis TSStrong
hi TSStrong guifg=#a8a8a8 guibg=#262626 gui=underline cterm=underline
hi link TSTitle Title
hi TSLiteral guifg=#ffaf5f
hi TSURI guifg=#ffaf5f
hi link TSTag Tag
hi TSTagDelimiter guifg=#585858
hi markdownH1 guifg=#a8a8a8 gui=bold cterm=bold
hi markdownH2 guifg=#a8a8a8 gui=bold cterm=bold
hi markdownH3 guifg=#a8a8a8 gui=bold cterm=bold
hi markdownH4 guifg=#a8a8a8 gui=bold cterm=bold
hi markdownH5 guifg=#a8a8a8 gui=bold cterm=bold
hi markdownH6 guifg=#a8a8a8 gui=bold cterm=bold
hi markdownBold guifg=#a8a8a8 gui=bold cterm=bold
hi markdownItalic guifg=#a8a8a8 gui=italic cterm=italic
hi markdownBoldItalic guifg=#a8a8a8 gui=italic,bold cterm=italic,bold
