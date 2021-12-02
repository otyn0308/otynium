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
    print "#{name} not found!" unless @colors.key?(name)
    @colors[name][:fg]
  end

  def fg?(name)
    !@colors[name][:fg].nil?
  end

  def bg(name)
    print "#{name} not found!" unless @colors.key?(name)
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
      name: name.join(', '),
      scope: scope,
      settings: settings
    }
  end

  def output
    JSON.pretty_generate @json
  end
end

def vscode_colorscheme(name, styles, type, &blk)
  vscode = VsCode.new(name, styles, type)
  vscode.instance_eval(&blk)
  vscode.output
end

def vim_colorscheme(name, styles, &blk)
  vim = Vim.new(name, styles)
  vim.instance_eval(&blk)
  vim.output
end

def styles(color, &blk)
  palette = Palette.new(color)
  palette.instance_eval(&blk)
  palette
end