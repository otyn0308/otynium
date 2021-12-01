require 'json'

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

  def hi(group, color_name)
    @text << "hi #{group}"
    @text << " guifg=#{@palette.fg(color_name)}" if @palette.fg?(color_name)
    @text << " guibg=#{@palette.bg(color_name)}" if @palette.bg?(color_name)

    unless @palette.attrs(color_name).empty?
      attr = @palette.attrs(color_name).map {|attr| attr.to_s}.join(',')
      @text << " gui=#{attr} cterm=#{attr}" 
    end
    @text << "\n"
  end

  def output
    @text
  end
end

class Palette
  def initialize(color)
    @color = color
    @colors = {}
  end

  def choose_color(color)
    return @color[color] if color.is_a? Symbol
    color
  end

  def hi(name, fg, bg, attrs)
    @colors[name] = { fg: choose_color(fg), bg: choose_color(bg), attr: attrs }
  end

  def fg(name)
    @colors[name][:fg]
  end

  def fg?(name)
    !@colors[name][:fg].nil?
  end

  def bg(name)
    @colors[name][:bg]
  end

  def bg?(name)
    !@colors[name][:bg].nil?
  end

  def italic?(name)
    @colors[name][:attr].include? :italic
  end

  def underline?(name)
    @colors[name][:attr].include? :underline
  end

  def bold?(name)
    @colors[name][:attr].include? :bold
  end

  def none?(name)
    @colors[name][:attr].include? :none
  end

  def attrs(name)
    @colors[name][:attr]
  end
end

class TokenColor
  def initialize(name, palette)
    @name = name
    @palette = palette
    @settings = {}
  end

  def scope(scope)
    @scope = scope
  end

  def style(style)
    @settings[:fontStyle] = style
  end

  def fore(fg)
    @settings[:foreground] = @palette.fg(fg)
  end

  def back(bg)
    @settings[:background] = color(@palette, bg)
  end

  def json
    {
      name: @name,
      scope: @scope,
      settings: @settings
    }
  end
end

class VsCode
  def initialize(name, palette, type)
    @json = {
      name: name,
      type: type,
      colors: {},
      tokenColors: [],
    }
    @palette = palette
  end

  def background(bg)
    @json[:colors]['editor.background'] = @palette.bg(bg)
  end


  def foreground(fg)
    @json[:colors]['editor.foreground'] = @palette.fg(fg)
  end

  def barbadge_background(bg)
    @json[:colors]['activityBarBadge.background'] = @palette.bg(bg)
  end

  def sidebartitle_foregraund(fg)
    @json[:colors]['sideBarTitle.foreground'] = @palette.fg(fg)
  end

  def token(name, style, scope)
    settings = {}
    settings[:foreground] = @palette.fg(style) if @palette.fg(style)
    settings[:fontStyle] = 'underline' if @palette.attrs(style).include? :underline
    settings[:fontStyle] = 'italic' if @palette.attrs(style).include? :italic
    settings[:fontStyle] = 'bold' if @palette.attrs(style).include? :bold
    @json[:tokenColors] << {
      name: name,
      scope: scope,
      settings: settings
    }
  end

  def output
    JSON.pretty_generate @json
  end
end

def vscode_colorscheme(name, palette, type)
  vscode = VsCode.new(name, palette, type)
  vscode.instance_eval do
    background :Normal
    foreground :Normal
    barbadge_background :Normal
    sidebartitle_foregraund :Normal
    token 'Comment', :Comment, ['comment', 'punctuation.definition.comment']
    token 'Variables', :TSVariable, ['variable', 'string constant.other.placeholder']
    token 'Colors', :Normal, ['constant.other.color']
    token 'Invalid', :Error, ['invalid', 'invalid.illegal']
    token 'Keyword', :Keyword, ['keyword', 'storage.type', 'storage.modifier']
    token 'Storage', :StorageClass, ['storage.type', 'storage.modifier']
    # TODO
    token 'Operator, Misc', :Operator, [
      "keyword.control",
      "constant.other.color",
      "punctuation",
      "meta.tag",
      "punctuation.definition.tag",
      "punctuation.separator.inheritance.php",
      "punctuation.definition.tag.html",
      "punctuation.definition.tag.begin.html",
      "punctuation.definition.tag.end.html",
      "punctuation.section.embedded",
      "keyword.other.template",
      "keyword.other.substitution"
		]
    token 'Block Level Variables, Other Variables, String Link, Tag', :Tag, [
				"entity.name.tag",
				"meta.tag.sgml",
				"markup.deleted.git_gutter"
    ]
    token 'Function, Special Method', :Function, [
      'entity.name.function', 
			"meta.function-call",
			"variable.function",
			"support.function",
			"keyword.other.special-method"
    ]
    token 'Number', :Number, ['constant.numeric']
    token 'Constant', :Constant, ['constant.language', 'support.constant']
    token 'Function Argument, Tag Attribute, Embedded', :Constant, [
      "constant.character",
      "constant.escape",
      "variable.parameter",
      "keyword.other.unit",
      "keyword.other"
    ]
    token 'String, Symbols, Inherited Class, Markup Heading', :String, [
      "string",
      "constant.other.symbol",
      "constant.other.key",
      "entity.other.inherited-class",
      "markup.heading",
      "markup.inserted.git_gutter",
      "meta.group.braces.curly constant.other.object.key.js string.unquoted.label.js"
    ]
    token 'Class, Support', :Keyword, [
      "entity.name",
      "support.type",
      "support.class",
      "support.other.namespace.use.php",
      "meta.use.php",
      "support.other.namespace.php",
      "markup.changed.git_gutter",
      "support.type.sys-types"
		]
    token 'Entity Types', :Typedef, [
      "support.type"
    ]
    token 'CSS Class and Support', :Typedef, [
				"source.css support.type.property-name",
				"source.sass support.type.property-name",
				"source.scss support.type.property-name",
				"source.less support.type.property-name",
				"source.stylus support.type.property-name",
				"source.postcss support.type.property-name",
    ]
  end
  vscode.output
end


def vim_colorscheme(name, palette)
  vim = Vim.new(name, palette)
  vim.instance_eval do
    hi 'Normal', :Normal
    hi 'NonText', :NonText
    hi 'Cursor', :Cursor
    hi 'CursorLine', :CursorLine
    hi 'CursorLineNr', :CursorLineNr
    hi 'CursorColumn', :CursorColumn
    hi 'LineNr', :LineNr
    hi 'StatusLine', :StatusLine
    hi 'StatusLineNC', :StatusLineNC
    hi 'StatusLineTerm', :StatusLineTerm
    hi 'StatusLineTermNC', :StatusLineTermNC
    hi 'Title', :Title
    hi 'Directory', :Directory
    hi 'Pmenu', :Pmenu
    hi 'PmenuSel', :PmenuSel
    hi 'PmenuSbar', :PmenuSbar
    hi 'PmenuThumb', :PmenuThumb
    hi 'Search', :Search
    hi 'IncSearch', :IncSearch
    hi 'DiffAdd', :DiffAdd
    hi 'DiffChange', :DiffChange
    hi 'DiffDelete', :DiffDelete
    hi 'DiffText', :DiffText
    hi 'SpellBad', :SpellBad
    hi 'SpellCap', :SpellCap
    hi 'SpellLocal', :SpellLocal
    hi 'SpellRare', :SpellRare
    hi 'SpecialKey', :SpecialKey
    hi 'WildMenu', :WildMenu
    hi 'Folded', :Folded
    hi 'FoldColumn', :FoldColumn
    hi 'VertSplit', :VertSplit
    hi 'TabLine', :TabLine
    hi 'TabLineFill', :TabLineFill
    hi 'TabLineSel', :TabLineSel
    hi 'ColorColumn', :ColorColumn
    hi 'SignColumn', :SignColumn
    hi 'Question', :Question
    hi 'Visual', :Visual
    hi 'VisualNOS', :VisualNOS
    hi 'ModeMsg', :ModeMsg
    hi 'MoreMsg', :MoreMsg
    hi 'WarningMsg', :WarningMsg
    hi 'ErrorMsg', :ErrorMsg
    # syntax highlighting
    hi 'Constant', :Constant
    hi 'String', :String
    hi 'Character', :Character
    hi 'Number', :Number
    hi 'Float', :Float
    hi 'Boolean', :Boolean
    hi 'Identifier', :Identifier
    hi 'Function', :Function
    hi 'Statement', :Statement
    hi 'Conditional', :Conditional
    hi 'Repeat', :Repeat
    hi 'Label', :Label
    hi 'Operator', :Operator
    hi 'Keyword', :Keyword
    hi 'Exception', :Exception
    hi 'Type', :Type
    hi 'StorageClass', :StorageClass
    hi 'Structure', :Structure
    hi 'Typedef', :Typedef
    hi 'PreProc', :PreProc
    hi 'Include', :Include
    hi 'Define', :Define
    hi 'Macro', :Macro
    hi 'PreCondit', :PreCondit
    hi 'Special', :Special
    hi 'SpecialChar', :SpecialChar
    hi 'Tag', :Tag
    hi 'Delimiter', :Delimiter
    hi 'SpecialComment', :SpecialComment
    hi 'Debug', :Debug
    hi 'Underlined', :Underlined
    hi 'Comment', :Comment
    hi 'Todo', :Todo
    hi 'Ignore', :Ignore
    hi 'Error', :Error
    hi 'MatchParen', :MatchParen
    hi 'Warning', :Warning
    hi 'hint', :hint
    hi 'hintMsg', :hintMsg
    hi 'Info', :Info
    hi 'InfoMsg', :InfoMsg
    # coc.nvim
    hi 'CocErrorhighlight', :CocErrorhighlight
    hi 'CocWarninghighlight', :CocWarninghighlight
    hi 'Cochinthighlight', :Cochinthighlight
    hi 'CocInfohighlight', :CocInfohighlight
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
    hi 'TSVariable', :TSVariable
    link 'TSVariableBuiltin'    , 'TSVariable'
    link 'TSText'               , 'Normal'
    hi 'TSStrong', :TSStrong
    link 'TSEmphasis'           , 'TSStrong'
    hi 'TSStrong', :TSStrong
    link 'TSTitle'              , 'Title'
    hi 'TSLiteral', :TSLiteral
    hi 'TSURI', :TSURI
    link 'TSTag'                , 'Tag'
    hi 'TSTagDelimiter', :TSTagDelimiter
    # html and markdown
    hi 'markdownH1', :markdownH1
    hi 'markdownH2', :markdownH2
    hi 'markdownH3', :markdownH3
    hi 'markdownH4', :markdownH4
    hi 'markdownH5', :markdownH5
    hi 'markdownH6', :markdownH6
    hi 'markdownBold', :markdownBold
    hi 'markdownItalic', :markdownItalic
    hi 'markdownBoldItalic', :markdownBoldItalic
  end
  vim.output
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

color256 = {
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

def palette(color)
  palette = Palette.new(color)
  palette.instance_eval do
  hi :Normal              , :white   , :gray1  , []
  hi :NonText             , :gray2   , nil     , []
  hi :Cursor              , :gray2   , :gray3  , [:none]
  hi :CursorLine          , nil      , :gray2  , [:none]
  hi :CursorLineNr        , :cyan    , :gray2  , [:none]
  hi :CursorColumn        , nil      , :gray2  , []
  hi :LineNr              , :gray2   , nil     , []
  hi :StatusLine          , :gray5   , :gray2  , []
  hi :StatusLineNC        , :gray1   , :gray4  , []
  hi :StatusLineTerm      , :gray5   , :gray2  , []
  hi :StatusLineTermNC    , :gray1   , :gray4  , []
  hi :Title               , :green   , nil     , []
  hi :Directory           , :blue    , nil     , []
  hi :Pmenu               , :white   , :black  , []
  hi :PmenuSel            , :white   , :gray2  , []
  hi :PmenuSbar           , :gray3   , nil     , []
  hi :PmenuThumb          , :gray4   , nil     , []
  hi :Search              , :gray2   , :yellow , []
  hi :IncSearch           , :gray1   , :yellow , []
  hi :DiffAdd             , :cyan    , :gray2  , []
  hi :DiffChange          , :yellow2 , :gray2  , []
  hi :DiffDelete          , :red     , :gray2  , []
  hi :DiffText            , :green2  , :gray2  , []
  hi :SpellBad            , :red     , nil     , []
  hi :SpellCap            , :blue    , nil     , []
  hi :SpellLocal          , :green   , nil     , []
  hi :SpellRare           , :gray2   , :yellow , []
  hi :SpecialKey          , :gray2   , nil     , []
  hi :WildMenu            , :blue    , nil     , []
  hi :Folded              , :gray4   , :gray1  , []
  hi :FoldColumn          , :gray4   , :gray1  , []
  hi :VertSplit           , :gray4   , nil     , []
  hi :TabLine             , :gray4   , :gray2  , []
  hi :TabLineFill         , :gray4   , :gray2  , []
  hi :TabLineSel          , :orange  , :gray3  , []
  hi :ColorColumn         , nil      , :gray1  , []
  hi :SignColumn          , :gray5   , :gray1  , []
  hi :Question            , :cyan    , nil     , []
  hi :Visual              , :gray5   , :gray3  , []
  hi :VisualNOS           , :gray5   , :gray3  , []
  hi :ModeMsg             , :yellow  , nil     , []
  hi :MoreMsg             , :yellow  , nil     , []
  hi :WarningMsg          , :red     , nil     , []
  hi :ErrorMsg            , nil      , :red2   , []
  hi :Constant            , :orange  , nil     , []
  hi :String              , :green   , nil     , []
  hi :Character           , :green   , nil     , []
  hi :Number              , :orange  , nil     , []
  hi :Float               , :orange  , nil     , []
  hi :Boolean             , :orange  , nil     , []
  hi :Identifier          , :red     , nil     , [:none]
  hi :Function            , :cyan    , nil     , []
  hi :Statement           , :purple  , nil     , []
  hi :Conditional         , :purple  , nil     , []
  hi :Repeat              , :purple  , nil     , []
  hi :Label               , :purple  , nil     , []
  hi :Operator            , :blue    , nil     , []
  hi :Keyword             , :purple  , nil     , []
  hi :Exception           , :yellow  , nil     , []
  hi :Type                , :yellow  , nil     , []
  hi :StorageClass        , :orange  , nil     , []
  hi :Structure           , :orange  , nil     , []
  hi :Typedef             , :yellow  , nil     , []
  hi :PreProc             , :cyan    , nil     , []
  hi :Include             , :cyan    , nil     , []
  hi :Define              , :cyan    , nil     , []
  hi :Macro               , :cyan    , nil     , []
  hi :PreCondit           , :blue    , nil     , []
  hi :Special             , :cyan    , nil     , []
  hi :SpecialChar         , :cyan    , nil     , []
  hi :Tag                 , :blue    , nil     , []
  hi :Delimiter           , :blue    , nil     , []
  hi :SpecialComment      , :cyan    , nil     , []
  hi :Debug               , :red     , nil     , []
  hi :Underlined          , :red     , nil     , []
  hi :Comment             , :gray4   , nil     , []
  hi :Todo                , :gray1   , :yellow , []
  hi :Ignore              , :gray3   , nil     , []
  hi :Error               , nil      , :red2   , []
  hi :MatchParen          , :gray2   , :cyan   , []
  hi :Warning             , :orange  , nil     , []
  hi :hint                , nil      , :gray3  , []
  hi :hintMsg             , :gray3   , nil     , []
  hi :Info                , nil      , :cyan   , []
  hi :InfoMsg             , :cyan    , nil     , []
  hi :CocErrorhighlight   , nil      , nil     , [:underline]
  hi :CocWarninghighlight , nil      , nil     , [:underline]
  hi :Cochinthighlight    , nil      , nil     , [:underline]
  hi :CocInfohighlight    , nil      , nil     , [:underline]
  hi :TSVariable          , :cyan    , nil     , []
  hi :TSStrong            , :white   , :gray1  , [:bold]
  hi :TSStrong            , :white   , :gray1  , [:underline]
  hi :TSLiteral           , :orange  , nil     , []
  hi :TSURI               , :orange  , nil     , []
  hi :TSTagDelimiter      , :gray4   , nil     , []
  hi :markdownH1          , :white   , nil     , [:bold]
  hi :markdownH2          , :white   , nil     , [:bold]
  hi :markdownH3          , :white   , nil     , [:bold]
  hi :markdownH4          , :white   , nil     , [:bold]
  hi :markdownH5          , :white   , nil     , [:bold]
  hi :markdownH6          , :white   , nil     , [:bold]
  hi :markdownBold        , :white   , nil     , [:bold]
  hi :markdownItalic      , :white   , nil     , [:italic]
  hi :markdownBoldItalic  , :white   , nil     , [:italic     , :bold]
  end
  palette
end

File.write("vim/otynium.vim", vim_colorscheme('otynium', palette(color)))
File.write("vim/otynium256.vim", vim_colorscheme('otynium256', palette(color256)))
File.write("vscode/themes/otynium-color-theme.json", vscode_colorscheme('otynium', palette(color), 'dark'))
