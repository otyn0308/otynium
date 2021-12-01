let vim_preamble name =
  [
    "hi clear";
    "if version > 580";
    "  hi clear ";
    "  if exists(\"syntax_on\") ";
    "    syntax reset ";
    "  endif ";
    "endif";
    "";
    "set background=dark";
    "set termguicolors";
    Printf.sprintf "let g:colors_name = \"%s\"" name;
  ]

type color_t = {
  red     : string;
  red2    : string;
  orange  : string;
  yellow  : string;
  yellow2 : string;
  green   : string;
  green2  : string;
  cyan    : string;
  blue    : string;
  purple  : string;
  gray1   : string;
  gray2   : string;
  gray3   : string;
  gray4   : string;
  gray5   : string;
  white   : string;
  black   : string;
}
[@@ocamlformat "disable"]

let color =
  {
    red     = "ef7070";
    red2    = "#8a1a1a";
    orange  = "#e8a368";
    yellow  = "#d8cf6c";
    yellow2 = "#e2d86a";
    green   = "#85c178";
    green2  = "#5cc46b";
    cyan    = "#64bac9";
    blue    = "#6882e2";
    purple  = "#b281d1";
    gray1   = "#222c33";
    gray2   = "#314047";
    gray3   = "#506872";
    gray4   = "#5f7b87";
    gray5   = "#7395a3";
    white   = "#a9afb2";
    black   = "#050a26";
  }
[@@ocamlformat "disable"]

let color256 =
  {
    red     = "#d75f5f";
    red2    = "#870000";
    orange  = "#ffaf5f";
    yellow  = "#d7d75f";
    yellow2 = "#d7d700";
    green   = "#87af87";
    green2  = "#5faf5f";
    cyan    = "#5fafd7";
    blue    = "#5f87ff";
    purple  = "#af87ff";
    gray1   = "#262626";
    gray2   = "#303030";
    gray3   = "#4e4e4e";
    gray4   = "#585858";
    gray5   = "#767676";
    white   = "#a8a8a8";
    black   = "#00005f";
  }
[@@ocamlformat "disable"]

type vim_highlight_t =
  (* group * guifg * guibg * attr *)
  | Hi of string * string option * string option * string option
  | Link of string * string

let vim color =
  [
  Hi ("Normal"           , Some color.white   , Some color.gray1  , None);
  Hi ("NonText"          , Some color.gray2   , None              , None);
  Hi ("Cursor"           , Some color.gray2   , Some color.gray3  , Some "none");
  Hi ("CursorLine"       , None               , Some color.gray2  , Some "none");
  Hi ("CursorLineNr"     , Some color.cyan    , Some color.gray2  , Some "none");
  Hi ("CursorColumn"     , None               , Some color.gray2  , None);
  Hi ("LineNr"           , Some color.gray2   , None              , None);
  Hi ("StatusLine"       , Some color.gray5   , Some color.gray2  , None);
  Hi ("StatusLineNC"     , Some color.gray1   , Some color.gray4  , None);
  Hi ("StatusLineTerm"   , Some color.gray5   , Some color.gray2  , None);
  Hi ("StatusLineTermNC" , Some color.gray1   , Some color.gray4  , None);
  Hi ("Title"            , Some color.green   , None              , None);
  Hi ("Directory"        , Some color.blue    , None              , None);
  Hi ("Pmenu"            , Some color.white   , Some color.black  , None);
  Hi ("PmenuSel"         , Some color.white   , Some color.gray2  , None);
  Hi ("PmenuSbar"        , Some color.gray3   , None              , None);
  Hi ("PmenuThumb"       , Some color.gray4   , None              , None);
  Hi ("Search"           , Some color.gray2   , Some color.yellow , None);
  Hi ("IncSearch"        , Some color.gray1   , Some color.yellow , None);
  Hi ("DiffAdd"          , Some color.cyan    , Some color.gray2  , None);
  Hi ("DiffChange"       , Some color.yellow2 , Some color.gray2  , None);
  Hi ("DiffDelete"       , Some color.red     , Some color.gray2  , None);
  Hi ("DiffText"         , Some color.green2  , Some color.gray2  , None);
  Hi ("SpellBad"         , Some color.red     , None              , None);
  Hi ("SpellCap"         , Some color.blue    , None              , None);
  Hi ("SpellLocal"       , Some color.green   , None              , None);
  Hi ("SpellRare"        , Some color.gray2   , Some color.yellow , None);
  Hi ("SpecialKey"       , Some color.gray2   , None              , None);
  Hi ("WildMenu"         , Some color.blue    , None              , None);
  Hi ("Folded"           , Some color.gray4   , Some color.gray1  , None);
  Hi ("FoldColumn"       , Some color.gray4   , Some color.gray1  , None);
  Hi ("VertSplit"        , Some color.gray4   , None              , None);
  Hi ("TabLine"          , Some color.gray4   , Some color.gray2  , None);
  Hi ("TabLineFill"      , Some color.gray4   , Some color.gray2  , None);
  Hi ("TabLineSel"       , Some color.orange  , Some color.gray3  , None);
  Hi ("ColorColumn"      , None               , Some color.gray1  , None);
  Hi ("SignColumn"       , Some color.gray5   , Some color.gray1  , None);
  Hi ("Question"         , Some color.cyan    , None              , None);
  Hi ("Visual"           , Some color.gray5   , Some color.gray3  , None);
  Hi ("VisualNOS"        , Some color.gray5   , Some color.gray3  , None);
  Hi ("ModeMsg"          , Some color.yellow  , None              , None);
  Hi ("MoreMsg"          , Some color.yellow  , None              , None);
  Hi ("WarningMsg"       , Some color.red     , None              , None);
  Hi ("ErrorMsg"         , None               , Some color.red2   , None);
  (* syntax highlighting *)
  Hi ("Constant"       , Some color.orange , None              , None);
  Hi ("String"         , Some color.green  , None              , None);
  Hi ("Character"      , Some color.green  , None              , None);
  Hi ("Number"         , Some color.orange , None              , None);
  Hi ("Float"          , Some color.orange , None              , None);
  Hi ("Boolean"        , Some color.orange , None              , None);
  Hi ("Identifier"     , Some color.red    , None              , Some "none");
  Hi ("Function"       , Some color.cyan   , None              , None);
  Hi ("Statement"      , Some color.purple , None              , None);
  Hi ("Conditional"    , Some color.purple , None              , None);
  Hi ("Repeat"         , Some color.purple , None              , None);
  Hi ("Label"          , Some color.purple , None              , None);
  Hi ("Operator"       , Some color.blue   , None              , None);
  Hi ("Keyword"        , Some color.purple , None              , None);
  Hi ("Exception"      , Some color.yellow , None              , None);
  Hi ("Type"           , Some color.yellow , None              , None);
  Hi ("StorageClass"   , Some color.orange , None              , None);
  Hi ("Structure"      , Some color.orange , None              , None);
  Hi ("Typedef"        , Some color.yellow , None              , None);
  Hi ("PreProc"        , Some color.cyan   , None              , None);
  Hi ("Include"        , Some color.cyan   , None              , None);
  Hi ("Define"         , Some color.cyan   , None              , None);
  Hi ("Macro"          , Some color.cyan   , None              , None);
  Hi ("PreCondit"      , Some color.blue   , None              , None);
  Hi ("Special"        , Some color.cyan   , None              , None);
  Hi ("SpecialChar"    , Some color.cyan   , None              , None);
  Hi ("Tag"            , Some color.blue   , None              , None);
  Hi ("Delimiter"      , Some color.blue   , None              , None);
  Hi ("SpecialComment" , Some color.cyan   , None              , None);
  Hi ("Debug"          , Some color.red    , None              , None);
  Hi ("Underlined"     , Some color.red    , None              , None);
  Hi ("Comment"        , Some color.gray4  , None              , None);
  Hi ("Todo"           , Some color.gray1  , Some color.yellow , None);
  Hi ("Ignore"         , Some color.gray3  , None              , None);
  Hi ("Error"          , None              , Some color.red2   , None);
  Hi ("MatchParen"     , Some color.gray2  , Some color.cyan   , None);
  Hi ("Warning"        , Some color.orange , None              , None);
  Hi ("Hint"           , None              , Some color.gray3  , None);
  Hi ("HintMsg"        , Some color.gray3  , None              , None);
  Hi ("Info"           , None              , Some color.cyan   , None);
  Hi ("InfoMsg"        , Some color.cyan   , None              , None);
  (* coc.nvim *)
  Hi ("CocErrorHighlight"   , None , None , Some "underline");
  Hi ("CocWarningHighlight" , None , None , Some "underline");
  Hi ("CocHintHighlight"    , None , None , Some "underline");
  Hi ("CocInfoHighlight"    , None , None , Some "underline");
  (* ALE *)
  Link ("ALEErrorSign"   , "ErrorMsg");
  Link ("ALEWarningSign" , "WarningMsg");
  (* LSP *)
  Link ("LspDiagnosticsDefaultError"         , "Error");
  Link ("LspDiagnosticsUnderlineError"       , "CocErrorHighlight");
  Link ("LspDiagnosticsFloatingError"        , "ErrorMsg");
  Link ("LspDiagnosticsSignError"            , "LspDiagnosticsFloatingError");
  Link ("LspDiagnosticsDefaultWarning"       , "Warning");
  Link ("LspDiagnosticsUnderlineWarning"     , "CocWarningHighlight");
  Link ("LspDiagnosticsFloatingWarning"      , "WarningMsg");
  Link ("LspDiagnosticsSignWarning"          , "LspDiagnosticsFloatingWarning");
  Link ("LspDiagnosticsDefaultHint"          , "Hint");
  Link ("LspDiagnosticsUnderlineHint"        , "CocHintHighlight");
  Link ("LspDiagnosticsFloatingHint"         , "HintMsg");
  Link ("LspDiagnosticsSignHint"             , "LspDiagnosticsFloatingHint");
  Link ("LspDiagnosticsDefaultInformation"   , "Information");
  Link ("LspDiagnosticsUnderlineInformation" , "CocInfoHighlight");
  Link ("LspDiagnosticsFloatingInformation"  , "InformationMsg");
  Link ("LspDiagnosticsSignInformation"      , "LspDiagnosticsFloatingInformation");
    (* TreeSitter *)
  Link ("TSError"              , "Error");
  Link ("TSPunctDelimiter"     , "Delimiter");
  Link ("TSPunctBracket"       , "Normal");
  Link ("TSPunctSpecial"       , "Special");
  Link ("TSConstant"           , "Constant");
  Link ("TSString"             , "String");
  Link ("TSStringRegex"        , "String");
  Link ("TSStringEscape"       , "String");
  Link ("TSCharacter"          , "Character");
  Link ("TSNumber"             , "Number");
  Link ("TSFloat"              , "Float");
  Link ("TSBoolean"            , "Boolean");
  Link ("TSAnnotation"         , "Function");
  Link ("TSAttribute"          , "Title");
  Link ("TSNamespace"          , "Title");
  Link ("TSFuncBuiltin"        , "Function");
  Link ("TSFunction"           , "Function");
  Link ("TSFuncMacro"          , "PreProc");
  Link ("TSParameter"          , "Type");
  Link ("TSParameterReference" , "TSParameter");
  Link ("TSMethod"             , "Function");
  Link ("TSField"              , "TSParameter");
  Link ("TSProperty"           , "TSParameter");
  Link ("TSConstructor"        , "Function");
  Link ("TSConditional"        , "Conditional");
  Link ("TSRepeat"             , "Repeat");
  Link ("TSLabel"              , "Label");
  Link ("TSKeyword"            , "Keyword");
  Link ("TSKeywordFunction"    , "Keyword");
  Link ("TSKeywordOperator"    , "Operator");
  Link ("TSOperator"           , "Operator");
  Link ("TSException"          , "Exception");
  Link ("TSType"               , "Type");
  Link ("TSTypeBuiltin"        , "Type");
  Link ("TSStructure"          , "Structure");
  Link ("TSInclude"            , "Include");
  Hi ("TSVariable"             , Some color.cyan   , None             , None);
  Link ("TSVariableBuiltin"    , "TSVariable");
  Link ("TSText"               , "Normal");
  Hi ("TSStrong"               , Some color.white  , Some color.gray1 , Some "bold");
  Link ("TSEmphasis"           , "TSStrong");
  Hi ("TSStrong"               , Some color.white  , Some color.gray1 , Some "underline");
  Link ("TSTitle"              , "Title");
  Hi ("TSLiteral"              , Some color.orange , None             , None);
  Hi ("TSURI"                  , Some color.orange , None             , None);
  Link ("TSTag"                , "Tag");
  Hi ("TSTagDelimiter"         , Some color.gray4  , None             , None);
  (* html and markdown *)
  Hi ("markdownH1"         , Some color.white , None , Some "bold");
  Hi ("markdownH2"         , Some color.white , None , Some "bold");
  Hi ("markdownH3"         , Some color.white , None , Some "bold");
  Hi ("markdownH4"         , Some color.white , None , Some "bold");
  Hi ("markdownH5"         , Some color.white , None , Some "bold");
  Hi ("markdownH6"         , Some color.white , None , Some "bold");
  Hi ("markdownBold"       , Some color.white , None , Some "bold");
  Hi ("markdownItalic"     , Some color.white , None , Some "italic");
  Hi ("markdownBoldItalic" , Some color.white , None , Some "italic,bold");
  ]
[@@ocamlformat "disable"]

let generate_vim color =
  let with_name name = function Some var -> name ^ "=" ^ var | None -> "" in
  let line = function
    | Hi (group, fg, bg, attr) ->
        let attr = Option.map (fun attr -> Printf.sprintf "'%s'" attr) attr in
        Printf.sprintf "hi %s %s %s %s %s\n" group (with_name "guifg" fg)
          (with_name "guibg" bg) (with_name "gui" attr) (with_name "cterm" attr)
    | Link (hi_from, hi_to) -> Printf.sprintf "hi link %s %s\n" hi_from hi_to
  in
  color |> vim |> List.map line |> List.fold_left ( ^ ) ""

let () =
  let oc_vim = open_out "vim/otynium.vim" in
  Printf.fprintf oc_vim "%s" @@ List.fold_left (fun acc line -> acc ^ line ^ "\n") "" @@ vim_preamble "otynium";
  Printf.fprintf oc_vim "%s" @@ generate_vim color;
  close_out oc_vim;
  let oc_vim = open_out "vim/otynium256.vim" in
  Printf.fprintf oc_vim "%s" @@ List.fold_left (fun acc line -> acc ^ line ^ "\n") "" @@ vim_preamble "otynium256";
  Printf.fprintf oc_vim "%s" @@ generate_vim color256;
  close_out oc_vim
