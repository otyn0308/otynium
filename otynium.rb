class Vim
  def initialize(name, palette)
    @text = ''
    @text << "hi clear\n"
    @text << "if version > 580\n"
    @text << "  hi clear \n"
    @text << "  if exists(\"syntax_on\") \n"
    @text << "    syntax reset \n"
    @text << "  endif \n"
    @text << "endif\n"
    @text << "\n"
    @text << "set background=dark\n"
    @text << "set termguicolors\n"
    @text << "let g:colors_name = '#{name}'\n"
    @palette = palette
  end

  def link(from, to)
    @text << "hi link #{from} #{to}\n"
  end

  def hi(group, fg, bg, attr)
    @text << "hi #{group}"
    @text << " guifg=#{@palette[fg]}" if fg.is_a? Symbol
    @text << " guifg=#{fg}" if fg.is_a? String

    @text << " guibg=#{@palette[bg]}" if bg.is_a? Symbol
    @text << " guibg=#{bg}" if bg.is_a? String

    @text << " gui=#{attr} cterm=#{attr}" unless attr.nil?
    @text << "\n"
  end

  def output
    @text
  end
end

color = {
  red: "\#ef7070",
  red2: "\#8a1a1a",
  orange: "\#e8a368",
  yellow: "\#d8cf6c",
  yellow2: "\#e2d86a",
  green: "\#85c178",
  green2: "\#5cc46b",
  cyan: "\#64bac9",
  blue: "\#6882e2",
  purple: "\#b281d1",
  gray1: "\#222c33",
  gray2: "\#314047",
  gray3: "\#506872",
  gray4: "\#5f7b87",
  gray5: "\#7395a3",
  white: "\#a9afb2",
  black: "\#050a26"
}

color256 =
  {
    red: "\#d75f5f",
    red2: "\#870000",
    orange: "\#ffaf5f",
    yellow: "\#d7d75f",
    yellow2: "\#d7d700",
    green: "\#87af87",
    green2: "\#5faf5f",
    cyan: "\#5fafd7",
    blue: "\#5f87ff",
    purple: "\#af87ff",
    gray1: "\#262626",
    gray2: "\#303030",
    gray3: "\#4e4e4e",
    gray4: "\#585858",
    gray5: "\#767676",
    white: "\#a8a8a8",
    black: "\#00005f"
  }

def vim_colorscheme(name, palette)
  vim = Vim.new(name, palette)
  vim.instance_eval do
    hi 'Normal'           , :white   , :gray1  , nil
    hi 'NonText'          , :gray2   , nil     , nil
    hi 'Cursor'           , :gray2   , :gray3  , 'none'
    hi 'CursorLine'       , nil      , :gray2  , 'none'
    hi 'CursorLineNr'     , :cyan    , :gray2  , 'none'
    hi 'CursorColumn'     , nil      , :gray2  , nil
    hi 'LineNr'           , :gray2   , nil     , nil
    hi 'StatusLine'       , :gray5   , :gray2  , nil
    hi 'StatusLineNC'     , :gray1   , :gray4  , nil
    hi 'StatusLineTerm'   , :gray5   , :gray2  , nil
    hi 'StatusLineTermNC' , :gray1   , :gray4  , nil
    hi 'Title'            , :green   , nil     , nil
    hi 'Directory'        , :blue    , nil     , nil
    hi 'Pmenu'            , :white   , :black  , nil
    hi 'PmenuSel'         , :white   , :gray2  , nil
    hi 'PmenuSbar'        , :gray3   , nil     , nil
    hi 'PmenuThumb'       , :gray4   , nil     , nil
    hi 'Search'           , :gray2   , :yellow , nil
    hi 'IncSearch'        , :gray1   , :yellow , nil
    hi 'DiffAdd'          , :cyan    , :gray2  , nil
    hi 'DiffChange'       , :yellow2 , :gray2  , nil
    hi 'DiffDelete'       , :red     , :gray2  , nil
    hi 'DiffText'         , :green2  , :gray2  , nil
    hi 'SpellBad'         , :red     , nil     , nil
    hi 'SpellCap'         , :blue    , nil     , nil
    hi 'SpellLocal'       , :green   , nil     , nil
    hi 'SpellRare'        , :gray2   , :yellow , nil
    hi 'SpecialKey'       , :gray2   , nil     , nil
    hi 'WildMenu'         , :blue    , nil     , nil
    hi 'Folded'           , :gray4   , :gray1  , nil
    hi 'FoldColumn'       , :gray4   , :gray1  , nil
    hi 'VertSplit'        , :gray4   , nil     , nil
    hi 'TabLine'          , :gray4   , :gray2  , nil
    hi 'TabLineFill'      , :gray4   , :gray2  , nil
    hi 'TabLineSel'       , :orange  , :gray3  , nil
    hi 'ColorColumn'      , nil      , :gray1  , nil
    hi 'SignColumn'       , :gray5   , :gray1  , nil
    hi 'Question'         , :cyan    , nil     , nil
    hi 'Visual'           , :gray5   , :gray3  , nil
    hi 'VisualNOS'        , :gray5   , :gray3  , nil
    hi 'ModeMsg'          , :yellow  , nil     , nil
    hi 'MoreMsg'          , :yellow  , nil     , nil
    hi 'WarningMsg'       , :red     , nil     , nil
    hi 'ErrorMsg'         , nil      , :red2   , nil
    # syntax highlighting
    hi 'Constant'       , :orange , nil     , nil
    hi 'String'         , :green  , nil     , nil
    hi 'Character'      , :green  , nil     , nil
    hi 'Number'         , :orange , nil     , nil
    hi 'Float'          , :orange , nil     , nil
    hi 'Boolean'        , :orange , nil     , nil
    hi 'Identifier'     , :red    , nil     , 'none'
    hi 'Function'       , :cyan   , nil     , nil
    hi 'Statement'      , :purple , nil     , nil
    hi 'Conditional'    , :purple , nil     , nil
    hi 'Repeat'         , :purple , nil     , nil
    hi 'Label'          , :purple , nil     , nil
    hi 'Operator'       , :blue   , nil     , nil
    hi 'Keyword'        , :purple , nil     , nil
    hi 'Exception'      , :yellow , nil     , nil
    hi 'Type'           , :yellow , nil     , nil
    hi 'StorageClass'   , :orange , nil     , nil
    hi 'Structure'      , :orange , nil     , nil
    hi 'Typedef'        , :yellow , nil     , nil
    hi 'PreProc'        , :cyan   , nil     , nil
    hi 'Include'        , :cyan   , nil     , nil
    hi 'Define'         , :cyan   , nil     , nil
    hi 'Macro'          , :cyan   , nil     , nil
    hi 'PreCondit'      , :blue   , nil     , nil
    hi 'Special'        , :cyan   , nil     , nil
    hi 'SpecialChar'    , :cyan   , nil     , nil
    hi 'Tag'            , :blue   , nil     , nil
    hi 'Delimiter'      , :blue   , nil     , nil
    hi 'SpecialComment' , :cyan   , nil     , nil
    hi 'Debug'          , :red    , nil     , nil
    hi 'Underlined'     , :red    , nil     , nil
    hi 'Comment'        , :gray4  , nil     , nil
    hi 'Todo'           , :gray1  , :yellow , nil
    hi 'Ignore'         , :gray3  , nil     , nil
    hi 'Error'          , nil     , :red2   , nil
    hi 'MatchParen'     , :gray2  , :cyan   , nil
    hi 'Warning'        , :orange , nil     , nil
    hi 'hint'           , nil     , :gray3  , nil
    hi 'hintMsg'        , :gray3  , nil     , nil
    hi 'Info'           , nil     , :cyan   , nil
    hi 'InfoMsg'        , :cyan   , nil     , nil
    # coc.nvim
    hi 'CocErrorhighlight'   , nil , nil , 'underline'
    hi 'CocWarninghighlight' , nil , nil , 'underline'
    hi 'Cochinthighlight'    , nil , nil , 'underline'
    hi 'CocInfohighlight'    , nil , nil , 'underline'
    # ALE
    link 'ALEErrorSign'   , 'ErrorMsg'
    link 'ALEWarningSign' , 'WarningMsg'
    # LSP
    link 'LspDiagnosticsDefaultError'         , 'Error'
    link 'LspDiagnosticsUnderlineError'       , 'CocErrorhighlight'
    link 'LspDiagnosticsFloatingError'        , 'ErrorMsg'
    link 'LspDiagnosticsSignError'            , 'LspDiagnosticsFloatingError'
    link 'LspDiagnosticsDefaultWarning'       , 'Warning'
    link 'LspDiagnosticsUnderlineWarning'     , 'CocWarninghighlight'
    link 'LspDiagnosticsFloatingWarning'      , 'WarningMsg'
    link 'LspDiagnosticsSignWarning'          , 'LspDiagnosticsFloatingWarning'
    link 'LspDiagnosticsDefaulthint'          , 'hint'
    link 'LspDiagnosticsUnderlinehint'        , 'Cochinthighlight'
    link 'LspDiagnosticsFloatinghint'         , 'hintMsg'
    link 'LspDiagnosticsSignhint'             , 'LspDiagnosticsFloatinghint'
    link 'LspDiagnosticsDefaultInformation'   , 'Information'
    link 'LspDiagnosticsUnderlineInformation' , 'CocInfohighlight'
    link 'LspDiagnosticsFloatingInformation'  , 'InformationMsg'
    link 'LspDiagnosticsSignInformation'      , 'LspDiagnosticsFloatingInformation'
    # TreeSitter
    link 'TSError'              , 'Error'
    link 'TSPunctDelimiter'     , 'Delimiter'
    link 'TSPunctBracket'       , 'Normal'
    link 'TSPunctSpecial'       , 'Special'
    link 'TSConstant'           , 'Constant'
    link 'TSString'             , 'String'
    link 'TSStringRegex'        , 'String'
    link 'TSStringEscape'       , 'String'
    link 'TSCharacter'          , 'Character'
    link 'TSNumber'             , 'Number'
    link 'TSFloat'              , 'Float'
    link 'TSBoolean'            , 'Boolean'
    link 'TSAnnotation'         , 'Function'
    link 'TSAttribute'          , 'Title'
    link 'TSNamespace'          , 'Title'
    link 'TSFuncBuiltin'        , 'Function'
    link 'TSFunction'           , 'Function'
    link 'TSFuncMacro'          , 'PreProc'
    link 'TSParameter'          , 'Type'
    link 'TSParameterReference' , 'TSParameter'
    link 'TSMethod'             , 'Function'
    link 'TSField'              , 'TSParameter'
    link 'TSProperty'           , 'TSParameter'
    link 'TSConstructor'        , 'Function'
    link 'TSConditional'        , 'Conditional'
    link 'TSRepeat'             , 'Repeat'
    link 'TSLabel'              , 'Label'
    link 'TSKeyword'            , 'Keyword'
    link 'TSKeywordFunction'    , 'Keyword'
    link 'TSKeywordOperator'    , 'Operator'
    link 'TSOperator'           , 'Operator'
    link 'TSException'          , 'Exception'
    link 'TSType'               , 'Type'
    link 'TSTypeBuiltin'        , 'Type'
    link 'TSStructure'          , 'Structure'
    link 'TSInclude'            , 'Include'
    hi 'TSVariable'             , :cyan         , nil    , nil
    link 'TSVariableBuiltin'    , 'TSVariable'
    link 'TSText'               , 'Normal'
    hi 'TSStrong'               , :white        , :gray1 , 'bold'
    link 'TSEmphasis'           , 'TSStrong'
    hi 'TSStrong'               , :white        , :gray1 , 'underline'
    link 'TSTitle'              , 'Title'
    hi 'TSLiteral'              , :orange       , nil    , nil
    hi 'TSURI'                  , :orange       , nil    , nil
    link 'TSTag'                , 'Tag'
    hi 'TSTagDelimiter'         , :gray4        , nil    , nil
    # html and markdown
    hi 'markdownH1'             , :white        , nil    , 'bold'
    hi 'markdownH2'             , :white        , nil    , 'bold'
    hi 'markdownH3'             , :white        , nil    , 'bold'
    hi 'markdownH4'             , :white        , nil    , 'bold'
    hi 'markdownH5'             , :white        , nil    , 'bold'
    hi 'markdownH6'             , :white        , nil    , 'bold'
    hi 'markdownBold'           , :white        , nil    , 'bold'
    hi 'markdownItalic'         , :white        , nil    , 'italic'
    hi 'markdownBoldItalic'     , :white        , nil    , 'italic,bold'
  end
  vim.output
end

File.write("otynium.vim", vim_colorscheme('otynium', color))
