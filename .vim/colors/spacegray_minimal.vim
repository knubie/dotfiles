" Simple black and white color scheme based in iA Writer.
" Uses bold and underline for contrast in syntax.
" One or two accent colors available; blue & red.
" Assumes Yellow is background color and White is light gray
"
" Vim
hi! CursorLine ctermbg=Magenta cterm=None
hi! CursorLineNr ctermfg=Black
hi! LineNr ctermfg=Black
hi! Error cterm=Bold ctermbg=Yellow ctermfg=Red
hi! Normal ctermfg=White
hi! Folded ctermbg=None ctermfg=Black
hi! Identifier cterm=Bold ctermfg=Black
hi! ModeMsg ctermfg=White
hi! ErrorMsg ctermfg=Red ctermbg=None
hi! NonText ctermfg=Yellow
hi! Pmenu ctermbg=Magenta ctermfg=Cyan
hi! Search ctermbg=NONE ctermfg=Blue
hi! SignColumn ctermbg=None
hi! StatusLine ctermbg=White ctermfg=White
hi! VertSplit ctermbg=Magenta ctermfg=Magenta
hi! SpecialKey ctermfg=White
hi! vimHiGroup ctermfg=Black
hi! vimGroup ctermfg=Black
hi! vimHiCtermFgBg cterm=Bold ctermfg=Black
hi! vimHiCTerm cterm=Bold ctermfg=Black

hi! netrwClassify ctermfg=Green
hi! netrwExe ctermfg=Blue
hi! netrwDir ctermfg=DarkCyan
hi! CtrlPPrtBase ctermfg=White
hi! CtrlPLinePre ctermfg=Yellow

hi! qfFileName ctermfg=Black
hi! qfSeparator ctermfg=Black
hi! qfLineNr cterm=Italic ctermfg=Cyan

" Vim
hi! VimOption ctermfg=Black
hi! VimNotation ctermfg=Black
hi! vimFgBgAttrib ctermfg=Black
hi! vimBracket ctermfg=Black
hi! vimMapModKey ctermfg=Black
hi! vimHiAttrib ctermfg=Black
hi! vimParenSep ctermfg=Black
hi! vimLineComment ctermfg=White
hi! vimComment ctermfg=White
hi! vimCommentTitle cterm=Bold ctermfg=White
hi! vimNumber ctermfg=Black
hi! vimHighlight cterm=Bold ctermfg=Black
hi! vimAutoCmd cterm=Bold ctermfg=Black
hi! vimCommand cterm=Bold ctermfg=Black
hi! vimIsCommand cterm=Bold ctermfg=Black
hi! vimString cterm=italic ctermfg=Black
hi! vimContinue ctermfg=Black
hi! Statement cterm=Bold ctermfg=Black


" html
hi! htmlTitle ctermfg=Black
hi! htmlTag ctermfg=Black
hi! htmlLink ctermfg=Black
hi! htmlEndTag ctermfg=Black
hi! htmlH3 ctermfg=Black
hi! htmlH2 ctermfg=Black
hi! htmlH1 ctermfg=Black
hi! htmlTagName ctermfg=Black cterm=Bold
hi! htmlSpecialChar ctermfg=Black cterm=Bold
hi! htmlString cterm=Italic ctermfg=Black
hi! htmlComment ctermfg=White
hi! htmlCommentPart ctermfg=White
hi! htmlH1 ctermfg=Black
hi! htmlLink cterm=None ctermfg=Black
hi! htmlArg ctermfg=Black
hi! javaScript ctermfg=Black
hi! javaScriptComment ctermfg=White
hi! javaScriptLineComment ctermfg=White
hi! javaScriptStringS cterm=italic ctermfg=Black
hi! javaScriptStringD cterm=italic ctermfg=Black
hi! javaScriptRegexpString ctermfg=Black
hi! javaScriptBoolean cterm=bold ctermfg=Black
hi! mustacheMarker ctermbg=Magenta ctermfg=Black
hi! mustacheSection ctermbg=Magenta ctermfg=Black
hi! mustacheVariable ctermbg=Magenta ctermfg=Black
hi! mustachePartial ctermbg=Magenta ctermfg=Black

" sass
" selectors
hi! cssTagName cterm=bold ctermfg=Black
hi! sassClass cterm=bold ctermfg=Black
hi! sassClassChar ctermfg=Black
hi! sassId cterm=bold ctermfg=Black
hi! sassIdChar ctermfg=Black
hi! sassProperty cterm=underline ctermfg=Black
hi! sassInclude cterm=bold ctermfg=Black
hi! cssPseudoClassId ctermfg=Black
hi! cssAuralAttr ctermfg=Black
" junk
hi! cssBraces ctermfg=White
hi! sassDefinition ctermfg=White "semicolon
hi! Type ctermfg=Green
"properties
hi! sassProperty    ctermfg=Black
hi! sassAmpersand    ctermfg=Black
hi! sassMixing    ctermfg=Black cterm=bold
hi! sassInclude    ctermfg=Black cterm=bold
hi! cssMedia    ctermfg=Black cterm=bold
hi! scssComment ctermfg=White
hi! cssComment ctermfg=White
hi! sassComment ctermfg=White
hi! cssUnitDecorators    ctermfg=Black
hi! cssVendor    ctermfg=Black
hi! cssBoxAttr ctermfg=Black
hi! cssTableAttr ctermfg=Black
hi! cssBackgroundAttr ctermfg=Black
hi! cssBorderAttr ctermfg=Black
hi! cssBackgroundAttr ctermfg=Black
hi! cssGradientAttr ctermfg=Black
hi! cssPositioningAttr ctermfg=Black
hi! cssStringQQ    ctermfg=Black
hi! cssStringQ    ctermfg=Black
hi! cssListAttr    ctermfg=Black
hi! cssValueTime    ctermfg=Black
hi! cssTransitionAttr    ctermfg=Black
hi! cssRenderProp   ctermfg=Black cterm=underline
hi! cssListProp   ctermfg=Black cterm=underline
hi! cssBackgroundProp   ctermfg=Black cterm=underline
hi! cssPositioningProp   ctermfg=Black cterm=underline
hi! cssDimensionProp   ctermfg=Black cterm=underline
hi! cssBorderProp   ctermfg=Black cterm=underline
hi! cssFlexibleBoxProp   ctermfg=Black cterm=underline
hi! cssTextProp   ctermfg=Black cterm=underline
hi! cssBoxProp   ctermfg=Black cterm=underline
hi! cssFontProp   ctermfg=Black cterm=underline
hi! cssUIProp   ctermfg=Black cterm=underline
hi! cssColorProp   ctermfg=Black cterm=underline
hi! cssGeneratedContentProp   ctermfg=Black cterm=underline
hi! cssBorderOutlineProp   ctermfg=Black cterm=underline
hi! cssMarginProp   ctermfg=Black cterm=underline
hi! cssPaddingProp   ctermfg=Black cterm=underline
hi! cssTransitionProp   ctermfg=Black cterm=underline
hi! cssFunctionName ctermfg=Black cterm=underline
hi! cssStringQQ ctermfg=Black cterm=italic
hi! cssStringQ ctermfg=Black cterm=italic
hi! cssImportant ctermfg=Black cterm=italic
hi! cssSelectorOp ctermfg=White
"values
hi! cssValueLength  ctermfg=Black
hi! cssValueNumber  ctermfg=Black
hi! cssValueTime ctermfg=Black
hi! cssColor        ctermfg=Black
hi! cssRenderAttr   ctermfg=Black
hi! cssUIAttr       ctermfg=Black
hi! cssCommonAttr   ctermfg=Black
hi! cssTextAttr     ctermfg=Black
hi! cssFontAttr     ctermfg=Black
hi! cssColorAttr    ctermfg=Black
hi! cssUrl          ctermfg=Black

hi! sassMixing      ctermfg=White

"Coffeescript
hi! coffeeComment ctermfg=White
hi! coffeeTodo cterm=bold ctermfg=White
hi! coffeeExtendedOp ctermfg=Green
hi! coffeeDotAccess ctermfg=Green
hi! coffeeConditional cterm=Bold ctermfg=Green
hi! coffeeParen ctermfg=Green
hi! coffeeParens ctermfg=Green
hi! coffeeCurly ctermfg=Green
hi! coffeeInterpDelim ctermfg=White
hi! coffeeSpecialOp ctermfg=Green
hi! coffeeString cterm=italic ctermfg=Black
hi! coffeeRegex ctermfg=Black
hi! coffeeHeredoc cterm=italic ctermfg=Black
hi! coffeeNumber ctermfg=Black
hi! coffeeSpecialVar ctermfg=DarkCyan
hi! coffeeKeyword cterm=Bold ctermfg=Black
hi! coffeeRepeat cterm=Bold ctermfg=Black
hi! coffeeOperator cterm=Bold ctermfg=Black
hi! coffeeStatement cterm=Bold ctermfg=Black
hi! coffeeEscape cterm=Bold ctermfg=Black
hi! coffeeRepeat ctermfg=Green
hi! coffeeBoolean cterm=Bold ctermfg=Black
hi! coffeeRocket ctermfg=Black
hi! coffeeObject cterm=underline ctermfg=Black
hi! coffeeObjAssign ctermfg=Green
hi! coffeeSpecialIdent ctermfg=Black
hi! coffeeConstant ctermfg=Black
hi! coffeeDotAccess ctermfg=Black
hi! coffeeExtendedOp ctermfg=Black
hi! coffeeParens ctermfg=Black
hi! coffeeParen ctermfg=Black
hi! coffeeRepeat cterm=Bold ctermfg=Black
hi! coffeeConditional cterm=Bold ctermfg=Black
hi! coffeeObjAssign ctermfg=Black
hi! coffeeSpecialOp ctermfg=Black

"NERD Tree
hi! NERDTreeHelp ctermfg=White
hi! NERDTreeDir cterm=bold ctermfg=Black
hi! NERDTreeUp ctermfg=Black
hi! NERDTreeCWD cterm=underline ctermfg=Black
hi! NERDTreeExecFile ctermfg=Black
hi! NERDTreeClosable ctermfg=White
hi! NERDTreeOpenable ctermfg=White
hi! NERDTreeExecFile cterm=Italic ctermfg=Black

" Ruby
hi! rubyComment ctermfg=White
hi! rubyClass cterm=Bold ctermfg=Black
hi! rubyKeyword cterm=Bold ctermfg=Black
hi! rubyAttribute cterm=Bold ctermfg=Black
hi! rubyInclude cterm=Bold ctermfg=Black
hi! rubyDefine cterm=Bold ctermfg=Black
hi! rubyControl cterm=Bold ctermfg=Black
hi! rubyDoBlock cterm=Bold ctermfg=Black
hi! rubyConstant cterm=underline ctermfg=Black
hi! rubyStringDelimiter ctermfg=Black
hi! rubyInterpolationDelimiter cterm=Bold ctermfg=Black
hi! rubyString cterm=Italic ctermfg=Black
hi! rubySymbol ctermfg=Black
hi! rubyInteger ctermfg=Black
hi! rubyBoolean cterm=bold ctermfg=Black
hi! rubyRegexp ctermfg=Black
hi! rubyRegexpCharClass ctermfg=Black
hi! rubyRegexpSpecial ctermfg=Black

" Haml
"hi! hamlRuby ctermbg=Blue
hi! hamlRubyChar  cterm=Bold ctermfg=Black
hi! hamlIdChar    cterm=Bold ctermfg=Black
hi! hamlClassChar cterm=Bold ctermfg=Black
hi! hamlTag       cterm=Bold ctermfg=Black
hi! hamlDoctype   cterm=Bold ctermfg=Black
hi! hamlComment   cterm=Bold ctermfg=Black
hi! slimDocTypeKeyword cterm=Bold ctermfg=Black

" Jade
hi! jadeClassChar ctermfg=Black
hi! jadeTag cterm=Bold ctermfg=Black
hi! jadeScriptStatement cterm=Bold ctermfg=Black
hi! jadeDocTyp cterm=Bold ctermfg=Black

" C
hi! cFormat cterm=bold ctermfg=Black
hi! cType cterm=bold ctermfg=Black
hi! cRepeat cterm=bold ctermfg=Black
hi! cSpecial ctermfg=White

" Lua
hi! luaOperator cterm=bold ctermfg=Black
hi! luaStatement cterm=bold ctermfg=Black
hi! luaCond cterm=bold ctermfg=Black
hi! luaElse cterm=bold ctermfg=Black
hi! luaFunction cterm=bold ctermfg=Black
hi! luaComment ctermfg=White

" PHP
hi! phpIdentifier cterm=bold ctermfg=Black
hi! phpRegion ctermfg=Black
hi! phpVarSelector ctermfg=Black
hi! phpType cterm=Bold ctermfg=Black
hi! phpDefine cterm=bold ctermfg=Black
hi! phpConstant ctermfg=Black
hi! phpStringSingle cterm=Italic ctermfg=Black
hi! phpStringDouble cterm=Italic ctermfg=Black
hi! phpOperator ctermfg=Black
hi! phpParent ctermfg=Black
hi! phpComment ctermfg=White
hi! phpInclude cterm=bold ctermfg=Black
hi! phpStructure cterm=bold ctermfg=Black
hi! phpBoolean cterm=bold ctermfg=Black
hi! Delimiter ctermfg=Cyan

" PHP
hi! bladeConditional ctermfg=Blue

" Lisp
hi! lispNumber ctermfg=Black
hi! lispString cterm=Italic ctermfg=Black
hi! lispComment ctermfg=White
" Clojure
hi! clojureString cterm=Italic ctermfg=Black
hi! clojureQuote ctermfg=Black
hi! clojureBoolean cterm=Bold ctermfg=Black
hi! clojureConstant cterm=Bold ctermfg=Black
hi! clojureNumber ctermfg=Black
hi! clojureDefine cterm=Bold ctermfg=Black
hi! clojureSpecial cterm=Bold ctermfg=Black
hi! clojureDispatch ctermfg=Black
hi! clojureAnonArg cterm=Bold ctermfg=Black
hi! clojureComment ctermfg=White


" Shells
hi! zshSubstDelim ctermfg=Black
hi! zshSubst ctermfg=Black
hi! zshQuoted ctermfg=Black
hi! zshDeref ctermfg=Black
hi! zshJobSpec ctermfg=Black
hi! zshString ctermfg=Black
hi! zshComment ctermfg=White
hi! zshVariable ctermfg=Black
hi! zshFunction ctermfg=Black
hi! zshConditional cterm=Bold ctermfg=Black
hi! zshDoubleQuote ctermfg=Black
hi! zshTestDoubleQuote ctermfg=Black
hi! zshTestSingleQuote ctermfg=Black
hi! zshTestOpr ctermfg=Black
hi! zshOperator ctermfg=Black
hi! zshCommandSub ctermfg=Black
hi! zshRange ctermfg=Black
hi! zshDerefSimple cterm=Bold ctermfg=Black
hi! zshDerefWordError cterm=Bold ctermfg=Black
hi! zshPreProc cterm=Bold ctermfg=Black

hi! shComment ctermfg=White
hi! shVariable ctermfg=Black
hi! shFunction ctermfg=Black
hi! shConditional cterm=Bold ctermfg=Black
hi! shDoubleQuote ctermfg=Black
hi! shSingleQuote ctermfg=Black
hi! shEcho ctermfg=Black
hi! shNumber ctermfg=Black
hi! shCmdSubRegion ctermfg=Black
hi! PreProc ctermfg=Black
hi! shDerefVar ctermfg=Black
hi! shTestDoubleQuote ctermfg=Black
hi! shTestSingleQuote ctermfg=Black
hi! shTestOpr ctermfg=Black
hi! shOperator ctermfg=Black
hi! shCommandSub ctermfg=Black
hi! shRange ctermfg=Black
hi! shDerefSimple cterm=Bold ctermfg=Black
hi! shDerefWordError cterm=Bold ctermfg=Black
hi! shPreProc cterm=Bold ctermfg=Black
hi! confString ctermfg=Black
hi! confComment ctermfg=White

hi! fishComment ctermfg=White
hi! fishKeyword cterm=Bold ctermfg=Black
hi! fishString cterm=Italic ctermfg=Black
hi! fishIdentifier ctermfg=Black
hi! fishLineContinuation ctermfg=Black

" Unite
hi! uniteSource__GrepFile ctermfg=Black
hi! uniteSource__GrepSeparator ctermfg=Yellow
hi! uniteSource__GrepLineNr ctermfg=White
hi! uniteSource__GrepLine ctermfg=Black

" Python
hi! pythonComment ctermfg=White
hi! pythonString cterm=Italic ctermfg=Black
hi! pythonEscape cterm=Italic,Bold ctermfg=Black
hi! pythonNumber ctermfg=Black

" Git
hi! gitcommitSelectedType cterm=Bold ctermfg=Black
hi! gitcommitComment ctermfg=White
hi! gitConfigString cterm=Italic ctermfg=Black

" Haskell
hi! hsModule cterm=Bold ctermfg=Black
hi! hsStructure cterm=Bold ctermfg=Black
hi! hsImport cterm=Bold ctermfg=Black
hi! hsImportMod cterm=Bold ctermfg=Black
hi! hsLineComment ctermfg=White
hi! hsVarSym ctermfg=Black
hi! hsNumber ctermfg=Black
hi! hsString cterm=Italic ctermfg=Black
hi! ConId cterm=Underline ctermfg=Black

" Moonscript
hi! moonString cterm=italic ctermfg=Black
hi! moonAssignString cterm=italic ctermfg=Black
hi! moonBoolean cterm=Bold ctermfg=Black
hi! moonNumber ctermfg=Black
hi! moonFunction ctermfg=Black
hi! moonSpecialOp ctermfg=Black
hi! moonComment ctermfg=White

" Dockerfile
hi! dockerfileComment ctermfg=White
hi! dockerfileString cterm=Italic ctermfg=Black
"hi! dockerfileKeywords cterm=Underline ctermfg=Black

" YAML
hi! yamlKeyValueDelimiter ctermfg=black
hi! yamlInteger ctermfg=black
hi! moonConstant ctermfg=black
hi! yamlFlowString cterm=Italic ctermfg=black
hi! yamlFlowStringDelimiter cterm=Italic ctermfg=black

" Markdown
hi! markdownUrl ctermfg=Black cterm=underline
hi! markdownH1 cterm=Bold ctermfg=Black
hi! markdownH2 cterm=Bold ctermfg=Black
hi! markdownH3 cterm=Bold ctermfg=Black
