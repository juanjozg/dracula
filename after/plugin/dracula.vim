if dracula#should_abort()
  finish
endif

" Fzf: {{{
if exists('g:loaded_fzf') && ! exists('g:fzf_colors')
  let g:fzf_colors = {
    \ 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'Search'],
    \ 'fg+':     ['fg', 'Normal'],
    \ 'bg+':     ['bg', 'Normal'],
    \ 'hl+':     ['fg', 'DraculaOrange'],
    \ 'info':    ['fg', 'DraculaPurple'],
    \ 'border':  ['fg', 'Ignore'],
    \ 'prompt':  ['fg', 'DraculaGreen'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment'],
    \}
endif
"}}}
" ALE: {{{
if exists('g:ale_enabled')
  hi! link ALEError              DraculaErrorLine
  hi! link ALEWarning            DraculaWarnLine
  hi! link ALEInfo               DraculaInfoLine

  hi! link ALEErrorSign          DraculaRed
  hi! link ALEWarningSign        DraculaOrange
  hi! link ALEInfoSign           DraculaCyan

  hi! link ALEVirtualTextError   Comment
  hi! link ALEVirtualTextWarning Comment
endif
" }}}
" CtrlP: {{{
if exists('g:loaded_ctrlp')
  hi! link CtrlPMatch     IncSearch
  hi! link CtrlPBufferHid Normal
endif
" }}}
" GitGutter / gitsigns: {{{
if exists('g:loaded_gitgutter')
  hi! link GitGutterAdd    DiffAdd
  hi! link GitGutterChange DiffChange
  hi! link GitGutterDelete DiffDelete
endif
if has('nvim-0.5') && luaeval("pcall(require, 'gitsigns')")
  " https://github.com/lewis6991/gitsigns.nvim requires nvim > 0.5
  " has('nvim-0.5') checks >= 0.5, so this should be future-proof.
  hi! link GitSignsAdd      DiffAdd
  hi! link GitSignsAddLn    DiffAdd
  hi! link GitSignsAddNr    DiffAdd
  hi! link GitSignsChange   DiffChange
  hi! link GitSignsChangeLn DiffChange
  hi! link GitSignsChangeNr DiffChange
  hi! link GitSignsDelete   DiffDelete
  hi! link GitSignsDeleteLn DiffDelete
  hi! link GitSignsDeleteNr DiffDelete
endif
" }}}
" Tree-sitter: {{{
" The nvim-treesitter library defines many global highlight groups that are
" linked to the regular vim syntax highlight groups. We only need to redefine
" those highlight groups when the defaults do not match the dracula
" specification.
" https://github.com/nvim-treesitter/nvim-treesitter/blob/master/plugin/nvim-treesitter.vim
if exists('g:loaded_nvim_treesitter')
  hi! link TSAnnotation DraculaYellow
  hi! link TSAttribute DraculaGreenItalic
  hi! link TSBoolean DraculaPurpleBold
  hi! link TSCharacter DraculaGreen
  hi! link TSConditional DraculaPinkBoldItalic
  hi! link TSConstant DraculaPurpleBold
  hi! link TSConstBuiltin DraculaPurple
  hi! link TSConstMacro Macro
  hi! link TSConstructor DraculaCyan
  hi! link TSEmphasis DraculaFg
  hi! link TSError DraculaError
  hi! link TSException DraculaPurple
  hi! link TSField DraculaFg
  hi! link TSFloat DraculaOrange
  hi! link TSFuncBuiltin DraculaCyan
  hi! link TSFuncMacro Function
  hi! link TSFunction DraculaGreenBold
  hi! link TSInclude DraculaPinkBold
  hi! link TSKeyword DraculaPinkBold
  hi! link TSKeywordFunction DraculaPinkBoldItalic
  hi! link TSKeywordOperator DraculaPinkBold
  hi! link TSLabel DraculaPurpleItalic
  hi! link TSLiteral DraculaYellow
  hi! link TSMethod DraculaGreenBold
  hi! link TSNamespace DraculaFg
  hi! link TSNumber DraculaPurple
  hi! link TSOperator DraculaPink
  hi! link TSOperator DraculaPink
  hi! link TSVariable DraculaFg
  hi! link TSVariableBuiltin DraculaPurpleItalic
  hi! link TSParameter DraculaOrangeItalic
  hi! link TSParameterReference DraculaOrange
  hi! link TSProperty DraculaFg
  hi! link TSPunctBracket DraculaPink
  hi! link TSPunctDelimiter DraculaPink
  hi! link TSPunctSpecial DraculaPink
  hi! link TSRepeat DraculaPinkBoldItalic
  hi! link TSString Character
  hi! link TSStringEscap Character
  hi! link TSStringEscape Character
  hi! link TSStringRegex Character
  hi! link TSStrong DraculaFgBold
  hi! link TSStructure DraculaPurple
  hi! link TSSymbol DraculaPurple
  hi! link TSTag DraculaPink
  hi! link TSTagDelimiter DraculaFg
  hi! link TSText DraculaFg
  hi! link TSTitle DraculaFg
  hi! link TSType DraculaCyanBoldItalic
  hi! link TSTypeBuiltin DraculaCyanBoldItalic
  hi! link TSURI DraculaYellow
  hi! link TSUnderline Underlined
  hi! link TSVariableBuiltin DraculaPurpleItalic
  " HTML and JSX tag attributes. By default, this group is linked to TSProperty,
  " which in turn links to Identifer (white).
  hi! link TSTagAttribute DraculaGreenItalic
  " Rainbow
  hi! link rainbowcol1 DraculaPinkbold
  hi! link rainbowcol2 DraculaCyanBold
  hi! link rainbowcol3 DraculaPurpleBold
  hi! link rainbowcol4 DraculaGreenBold
  hi! link rainbowcol5 DraculaYellowBold
  hi! link rainbowcol6 DraculaPinkBold
  hi! link rainbowcol7 DraculaCyanBold
endif
" }}}
" nvim-cmp: {{{
" A completion engine plugin for neovim written in Lua.
" https://github.com/hrsh7th/nvim-cmp
if exists('g:loaded_cmp')
  hi! link CmpItemAbbrDeprecated DraculaError

  hi! link CmpItemAbbrMatch DraculaCyan
  hi! link CmpItemAbbrMatchFuzzy DraculaCyan

  hi! link CmpItemKindText DraculaFg
  hi! link CmpItemKindMethod Function
  hi! link CmpItemKindFunction Function
  hi! link CmpItemKindConstructor DraculaCyan
  hi! link CmpItemKindField DraculaOrange
  hi! link CmpItemKindVariable DraculaPurpleItalic
  hi! link CmpItemKindClass DraculaCyan
  hi! link CmpItemKindInterface DraculaCyan
  hi! link CmpItemKindModule DraculaYellow
  hi! link CmpItemKindProperty DraculaPink
  hi! link CmpItemKindUnit DraculaFg
  hi! link CmpItemKindValue DraculaYellow
  hi! link CmpItemKindEnum DraculaPink
  hi! link CmpItemKindKeyword DraculaPink
  hi! link CmpItemKindSnippet DraculaFg
  hi! link CmpItemKindColor DraculaYellow
  hi! link CmpItemKindFile DraculaYellow
  hi! link CmpItemKindReference DraculaOrange
  hi! link CmpItemKindFolder DraculaYellow
  hi! link CmpItemKindEnumMember DraculaPurple
  hi! link CmpItemKindConstant DraculaPurple
  hi! link CmpItemKindStruct DraculaPink
  hi! link CmpItemKindEvent DraculaFg
  hi! link CmpItemKindOperator DraculaPink
  hi! link CmpItemKindTypeParameter DraculaCyan

  hi! link CmpItemMenu Comment
endif
" }}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
