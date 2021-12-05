hi clear
if version > 580
  hi clear 
  if exists("syntax_on") 
    syntax reset 
  endif 
endif

set background=dark
set termguicolors
let g:colors_name = 'otynium'
hi Normal guifg=#a9afb2 guibg=#222c33
hi NonText guifg=#314047
hi Cursor guifg=#314047 guibg=#506872 gui=none cterm=none
hi CursorLine guibg=#314047 gui=none cterm=none
hi CursorLineNr guifg=#64bac9 guibg=#314047 gui=none cterm=none
hi CursorColumn guibg=#314047
hi LineNr guifg=#314047
hi StatusLine guifg=#7395a3 guibg=#314047
hi StatusLineNC guifg=#222c33 guibg=#5f7b87
hi StatusLineTerm guifg=#7395a3 guibg=#314047
hi StatusLineTermNC guifg=#222c33 guibg=#5f7b87
hi Title guifg=#85c178
hi Directory guifg=#6882e2
hi Pmenu guifg=#a9afb2 guibg=#050a26
hi PmenuSel guifg=#a9afb2 guibg=#314047
hi PmenuSbar guifg=#506872
hi PmenuThumb guifg=#5f7b87
hi Search guifg=#314047 guibg=#d8cf6c
hi IncSearch guifg=#222c33 guibg=#d8cf6c
hi DiffAdd guifg=#64bac9 guibg=#314047
hi DiffChange guifg=#e2d86a guibg=#314047
hi DiffDelete guifg=#ef7070 guibg=#314047
hi DiffText guifg=#5cc46b guibg=#314047
hi SpellBad guifg=#ef7070
hi SpellCap guifg=#6882e2
hi SpellLocal guifg=#85c178
hi SpellRare guifg=#314047 guibg=#d8cf6c
hi SpecialKey guifg=#314047
hi WildMenu guifg=#6882e2
hi Folded guifg=#5f7b87 guibg=#222c33
hi FoldColumn guifg=#5f7b87 guibg=#222c33
hi VertSplit guifg=#5f7b87
hi TabLine guifg=#5f7b87 guibg=#314047
hi TabLineFill guifg=#5f7b87 guibg=#314047
hi TabLineSel guifg=#e8a368 guibg=#506872
hi ColorColumn guibg=#222c33
hi SignColumn guifg=#7395a3 guibg=#222c33
hi Question guifg=#64bac9
hi Visual guifg=#7395a3 guibg=#506872
hi VisualNOS guifg=#7395a3 guibg=#506872
hi ModeMsg guifg=#d8cf6c
hi MoreMsg guifg=#d8cf6c
hi WarningMsg guifg=#ef7070
hi ErrorMsg guibg=#8a1a1a
hi Constant guifg=#e8a368
hi String guifg=#85c178
hi Character guifg=#85c178
hi Number guifg=#e8a368
hi Float guifg=#e8a368
hi Boolean guifg=#e8a368
hi Identifier guifg=#ef7070 gui=none cterm=none
hi Function guifg=#64bac9
hi Statement guifg=#b281d1
hi Conditional guifg=#b281d1
hi Repeat guifg=#b281d1
hi Label guifg=#b281d1
hi Operator guifg=#6882e2
hi Keyword guifg=#b281d1
hi Exception guifg=#d8cf6c
hi Type guifg=#d8cf6c
hi StorageClass guifg=#e8a368
hi Structure guifg=#e8a368
hi Typedef guifg=#d8cf6c
hi PreProc guifg=#64bac9
hi Include guifg=#64bac9
hi Define guifg=#64bac9
hi Macro guifg=#64bac9
hi PreCondit guifg=#6882e2
hi Special guifg=#64bac9
hi SpecialChar guifg=#64bac9
hi Tag guifg=#6882e2
hi Delimiter guifg=#6882e2
hi SpecialComment guifg=#64bac9
hi Debug guifg=#ef7070
hi Underlined guifg=#ef7070
hi Comment guifg=#5f7b87
hi Todo guifg=#222c33 guibg=#d8cf6c
hi Ignore guifg=#506872
hi Error guibg=#8a1a1a
hi MatchParen guifg=#314047 guibg=#64bac9
hi Warning guifg=#e8a368
hi hint guibg=#506872
hi hintMsg guifg=#506872
hi Info guibg=#64bac9
hi InfoMsg guifg=#64bac9
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
hi TSVariable guifg=#64bac9
hi link TSVariableBuiltin TSVariable
hi link TSText Normal
hi TSStrong guifg=#a9afb2 guibg=#222c33 gui=underline cterm=underline
hi link TSEmphasis TSStrong
hi TSStrong guifg=#a9afb2 guibg=#222c33 gui=underline cterm=underline
hi link TSTitle Title
hi TSLiteral guifg=#e8a368
hi TSURI guifg=#e8a368
hi link TSTag Tag
hi TSTagDelimiter guifg=#5f7b87
hi markdownH1 guifg=#a9afb2 gui=bold cterm=bold
hi markdownH2 guifg=#a9afb2 gui=bold cterm=bold
hi markdownH3 guifg=#a9afb2 gui=bold cterm=bold
hi markdownH4 guifg=#a9afb2 gui=bold cterm=bold
hi markdownH5 guifg=#a9afb2 gui=bold cterm=bold
hi markdownH6 guifg=#a9afb2 gui=bold cterm=bold
hi markdownBold guifg=#a9afb2 gui=bold cterm=bold
hi markdownItalic guifg=#a9afb2 gui=italic cterm=italic
hi markdownBoldItalic guifg=#a9afb2 gui=italic,bold cterm=italic,bold
