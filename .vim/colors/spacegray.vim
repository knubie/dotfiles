hi clear
set background=dark

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "spacegray"

" Spacegray Palette
" text: #cccccc
" bold text: #cccccc
" selection: #053641
" cursor: #FF00FF
" background: #000000 (95%)
" ------------------------------------------------------------------------
" COLOR/NORMAL                    | BRIGHT/BOLD
" ------------------------------------------------------------------------
" TERM     CTERM          VALUE   |  TERM           CTERM        VALUE
" ------------------------------------------------------------------------
" Black    0 Black        #000000 |  Bright Black    8  DarkGrey  #555555
" Red      1 DarkRed      #FF0000 |  Bright Red      9  Red       #E52153
" Green    2 DarkGreen    #95FF32 |  Bright Green    10 Green     #3D9C00
" Yellow   3 Brown        #FF9500 |  Bright Yellow   11 Yellow    #FFCC00
" Blue     4 DarkBlue     #95CCFF |  Bright Blue     12 Blue      #007FFF
" Magenta  5 DarkMagenta  #FF00FF |  Bright Magenta  13 Magenta   #FF7FFF
" Cyan     6 DarkCyan     #00FFFF |  Bright Cyan     14 Cyan      #782CBD
" White    7 Grey         #999999 |  Bright White    15 White     #FFFFFF
" ------------------------------------------------------------------------

hi CursorLine       ctermfg=NONE        ctermbg=Magenta     cterm=NONE
hi CursorColumn     ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi CursorLine       ctermfg=NONE        ctermbg=Magenta     cterm=NONE
hi CursorLineNr     ctermfg=8           ctermbg=NONE        cterm=NONE
hi LineNr           ctermfg=Black
hi Normal           ctermfg=White
hi Folded           ctermbg=None cterm=None ctermfg=8
hi ModeMsg ctermfg=White
hi ErrorMsg ctermfg=Red ctermbg=None
hi NonText cterm=None ctermfg=Magenta
hi Pmenu ctermbg=Magenta ctermfg=Cyan
hi Search ctermbg=NONE ctermfg=Blue
hi SignColumn ctermbg=None
hi StatusLine ctermbg=White ctermfg=White
hi VertSplit ctermbg=Magenta ctermfg=Magenta
hi SpecialKey ctermfg=White

hi Error            ctermbg=NONE        ctermfg=Red         cterm=Bold
hi Identifier       ctermbg=NONE        ctermfg=DarkMagenta cterm=NONE
hi Statement        ctermbg=NONE        ctermfg=DarkMagenta cterm=NONE
hi Comment          ctermbg=NONE        ctermfg=Black       cterm=NONE
hi String           ctermbg=NONE        ctermfg=Green       cterm=Italic
hi Todo             ctermbg=Magenta     ctermfg=Black       cterm=Italic

" Language Specific Overrides
" -----------------------------------------------------------------------------

hi netrwClassify ctermfg=Green
hi netrwExe ctermfg=Blue
hi netrwDir ctermfg=DarkCyan
hi CtrlPPrtBase ctermfg=White
hi CtrlPLinePre ctermfg=Yellow

hi qfFileName ctermfg=Black
hi qfSeparator ctermfg=Black
hi qfLineNr cterm=Italic ctermfg=Cyan

hi VimOption ctermfg=Black
hi VimNotation ctermfg=Black
hi vimFgBgAttrib ctermfg=Black
hi vimBracket ctermfg=Black
hi vimMapModKey ctermfg=Black
hi vimHiAttrib ctermfg=Black
hi vimParenSep ctermfg=Black
hi vimLineComment ctermfg=Black
hi vimComment ctermfg=Black
hi vimCommentTitle cterm=Bold ctermfg=White
hi vimNumber ctermfg=Black
hi vimHighlight cterm=Bold ctermfg=Black
hi vimAutoCmd cterm=Bold ctermfg=Black
hi vimCommand cterm=Bold ctermfg=Black
hi vimIsCommand cterm=Bold ctermfg=Black
hi vimString cterm=italic ctermfg=Black
hi vimContinue ctermfg=Black
hi vimHiGroup ctermfg=Black
hi vimGroup ctermfg=Black
hi vimHiCtermFgBg cterm=Bold ctermfg=Black
hi vimHiCTerm cterm=Bold ctermfg=Black

hi htmlTitle ctermfg=Black
hi htmlTag ctermfg=Black
hi htmlEndTag ctermfg=Black
hi htmlTagName ctermfg=Red cterm=None
hi htmlArg ctermfg=Yellow
hi htmlString cterm=Italic ctermfg=Green
hi htmlSpecialChar ctermfg=Black cterm=Bold
hi def link htmlLink        Normal
hi def link htmlEndTag      Normal
hi def link htmlH3          Normal
hi def link htmlH2          Normal
hi def link htmlH1          Normal
hi def link htmlComment     Comment
hi def link htmlCommentPart Comment

hi def link javaScriptComment Comment
hi def link javaScriptLineComment Comment
hi def link javaScriptStringS String
hi def link javaScriptStringD String
hi def link javaScriptCommentTodo Todo
hi javaScriptRegexpString ctermfg=Black
hi javaScriptBoolean ctermfg=Yellow
hi javaScriptNumber ctermfg=Yellow
hi javaScriptBraces ctermfg=White
hi mustacheMarker ctermbg=Magenta ctermfg=Black
hi mustacheSection ctermbg=Magenta ctermfg=Black
hi mustacheVariable ctermbg=Magenta ctermfg=Black
hi mustachePartial ctermbg=Magenta ctermfg=Black

" sass
" selectors
hi cssTagName ctermfg=Red
hi sassClass ctermfg=Yellow
hi sassClassChar ctermfg=Yellow
hi sassId cterm=bold ctermfg=Yellow
hi sassIdChar ctermfg=Yellow
hi sassProperty cterm=underline ctermfg=White
hi sassInclude cterm=bold ctermfg=White
hi cssPseudoClassId ctermfg=White
hi cssAuralAttr ctermfg=Black
" junk
hi cssBraces ctermfg=White
hi sassDefinition ctermfg=White "semicolon
hi Type ctermfg=Green
"properties
hi sassProperty    ctermfg=White
hi sassAmpersand    ctermfg=White
hi sassMixing    ctermfg=White cterm=bold
hi sassInclude    ctermfg=White cterm=bold
hi cssMedia    ctermfg=White cterm=bold
hi scssComment ctermfg=Black
hi cssComment ctermfg=Black
hi sassComment ctermfg=Black
hi cssUnitDecorators    ctermfg=White
hi cssVendor    ctermfg=White
hi cssBoxAttr ctermfg=White
hi cssTableAttr ctermfg=White
hi cssBackgroundAttr ctermfg=White
hi cssBorderAttr ctermfg=White
hi cssBackgroundAttr ctermfg=White
hi cssGradientAttr ctermfg=White
hi cssPositioningAttr ctermfg=White
hi cssStringQQ    ctermfg=White
hi cssStringQ    ctermfg=White
hi cssListAttr    ctermfg=White
hi cssValueTime    ctermfg=White
hi cssTransitionAttr    ctermfg=White
hi cssRenderProp   ctermfg=White cterm=underline
hi cssListProp   ctermfg=White cterm=underline
hi cssBackgroundProp   ctermfg=White cterm=underline
hi cssPositioningProp   ctermfg=White cterm=underline
hi cssDimensionProp   ctermfg=White cterm=underline
hi cssBorderProp   ctermfg=White cterm=underline
hi cssFlexibleBoxProp   ctermfg=White cterm=underline
hi cssTextProp   ctermfg=White cterm=underline
hi cssBoxProp   ctermfg=White cterm=underline
hi cssFontProp   ctermfg=White cterm=underline
hi cssUIProp   ctermfg=White cterm=underline
hi cssColorProp   ctermfg=White cterm=underline
hi cssGeneratedContentProp   ctermfg=White cterm=underline
hi cssBorderOutlineProp   ctermfg=White cterm=underline
hi cssMarginProp   ctermfg=White cterm=underline
hi cssPaddingProp   ctermfg=White cterm=underline
hi cssTransitionProp   ctermfg=White cterm=underline
hi cssFunctionName ctermfg=White cterm=underline
hi cssStringQQ ctermfg=White cterm=italic
hi cssStringQ ctermfg=White cterm=italic
hi cssImportant ctermfg=White cterm=italic
hi cssSelectorOp ctermfg=White
"values
hi cssValueLength  ctermfg=White
hi cssValueNumber  ctermfg=White
hi cssValueTime ctermfg=White
hi cssColor        ctermfg=White
hi cssRenderAttr   ctermfg=White
hi cssUIAttr       ctermfg=White
hi cssCommonAttr   ctermfg=White
hi cssTextAttr     ctermfg=White
hi cssFontAttr     ctermfg=White
hi cssColorAttr    ctermfg=White
hi cssUrl          ctermfg=White

hi sassMixing      ctermfg=White

hi coffeeComment ctermfg=White
hi coffeeTodo cterm=bold ctermfg=White
hi coffeeExtendedOp ctermfg=Green
hi coffeeDotAccess ctermfg=Green
hi coffeeConditional cterm=Bold ctermfg=Green
hi coffeeParen ctermfg=Green
hi coffeeParens ctermfg=Green
hi coffeeCurly ctermfg=Green
hi coffeeInterpDelim ctermfg=White
hi coffeeSpecialOp ctermfg=Green
hi coffeeString cterm=italic ctermfg=Black
hi coffeeRegex ctermfg=Black
hi coffeeHeredoc cterm=italic ctermfg=Black
hi coffeeNumber ctermfg=Black
hi coffeeSpecialVar ctermfg=DarkCyan
hi coffeeKeyword cterm=Bold ctermfg=Black
hi coffeeRepeat cterm=Bold ctermfg=Black
hi coffeeOperator cterm=Bold ctermfg=Black
hi coffeeStatement cterm=Bold ctermfg=Black
hi coffeeEscape cterm=Bold ctermfg=Black
hi coffeeRepeat ctermfg=Green
hi coffeeBoolean cterm=Bold ctermfg=Black
hi coffeeRocket ctermfg=Black
hi coffeeObject cterm=underline ctermfg=Black
hi coffeeObjAssign ctermfg=Green
hi coffeeSpecialIdent ctermfg=Black
hi coffeeConstant ctermfg=Black
hi coffeeDotAccess ctermfg=Black
hi coffeeExtendedOp ctermfg=Black
hi coffeeParens ctermfg=Black
hi coffeeParen ctermfg=Black
hi coffeeRepeat cterm=Bold ctermfg=Black
hi coffeeConditional cterm=Bold ctermfg=Black
hi coffeeObjAssign ctermfg=Black
hi coffeeSpecialOp ctermfg=Black

hi NERDTreeHelp ctermfg=Black
hi NERDTreeDir cterm=bold ctermfg=White
hi NERDTreeUp ctermfg=White
hi NERDTreeCWD cterm=underline ctermfg=White
hi NERDTreeExecFile ctermfg=White
hi NERDTreeClosable ctermfg=Black
hi NERDTreeOpenable ctermfg=Black
hi NERDTreeExecFile cterm=Italic ctermfg=White
hi NERDTreeDirSlash ctermfg=Black

hi rubyComment ctermfg=White
hi rubyClass cterm=Bold ctermfg=Black
hi rubyKeyword cterm=Bold ctermfg=Black
hi rubyAttribute cterm=Bold ctermfg=Black
hi rubyInclude cterm=Bold ctermfg=Black
hi rubyDefine cterm=Bold ctermfg=Black
hi rubyControl cterm=Bold ctermfg=Black
hi rubyDoBlock cterm=Bold ctermfg=Black
hi rubyConstant cterm=underline ctermfg=Black
hi rubyStringDelimiter ctermfg=Black
hi rubyInterpolationDelimiter cterm=Bold ctermfg=Black
hi rubyString cterm=Italic ctermfg=Black
hi rubySymbol ctermfg=Black
hi rubyInteger ctermfg=Black
hi rubyBoolean cterm=bold ctermfg=Black
hi rubyRegexp ctermfg=Black
hi rubyRegexpCharClass ctermfg=Black
hi rubyRegexpSpecial ctermfg=Black

"hi hamlRuby ctermbg=Blue
hi hamlRubyChar  cterm=Bold ctermfg=Black
hi hamlIdChar    cterm=Bold ctermfg=Black
hi hamlClassChar cterm=Bold ctermfg=Black
hi hamlTag       cterm=Bold ctermfg=Black
hi hamlDoctype   cterm=Bold ctermfg=Black
hi hamlComment   cterm=Bold ctermfg=Black
hi slimDocTypeKeyword cterm=Bold ctermfg=Black

hi jadeClassChar ctermfg=Black
hi jadeTag cterm=Bold ctermfg=Black
hi jadeScriptStatement cterm=Bold ctermfg=Black
hi jadeDocTyp cterm=Bold ctermfg=Black

hi cFormat cterm=bold ctermfg=Black
hi cType cterm=bold ctermfg=Black
hi cRepeat cterm=bold ctermfg=Black
hi cSpecial ctermfg=White

hi luaOperator cterm=bold ctermfg=Black
hi luaStatement cterm=bold ctermfg=Black
hi luaCond cterm=bold ctermfg=Black
hi luaElse cterm=bold ctermfg=Black
hi luaFunction cterm=bold ctermfg=Black
hi luaComment ctermfg=White

hi phpIdentifier cterm=bold ctermfg=Black
hi phpRegion ctermfg=Black
hi phpVarSelector ctermfg=Black
hi phpType cterm=Bold ctermfg=Black
hi phpDefine cterm=bold ctermfg=Black
hi phpConstant ctermfg=Black
hi phpStringSingle cterm=Italic ctermfg=Black
hi phpStringDouble cterm=Italic ctermfg=Black
hi phpOperator ctermfg=Black
hi phpParent ctermfg=Black
hi phpComment ctermfg=White
hi phpInclude cterm=bold ctermfg=Black
hi phpStructure cterm=bold ctermfg=Black
hi phpBoolean cterm=bold ctermfg=Black
hi Delimiter ctermfg=Cyan
hi bladeConditional ctermfg=Blue

hi lispNumber ctermfg=Black
hi lispString cterm=Italic ctermfg=Black
hi lispComment ctermfg=White

hi clojureString cterm=Italic ctermfg=Black
hi clojureQuote ctermfg=Black
hi clojureBoolean cterm=Bold ctermfg=Black
hi clojureConstant cterm=Bold ctermfg=Black
hi clojureNumber ctermfg=Black
hi clojureDefine cterm=Bold ctermfg=Black
hi clojureSpecial cterm=Bold ctermfg=Black
hi clojureDispatch ctermfg=Black
hi clojureAnonArg cterm=Bold ctermfg=Black
hi clojureComment ctermfg=White


hi zshSubstDelim ctermfg=Black
hi zshSubst ctermfg=Black
hi zshQuoted ctermfg=Black
hi zshDeref ctermfg=Black
hi zshJobSpec ctermfg=Black
hi zshString ctermfg=Black
hi zshComment ctermfg=White
hi zshVariable ctermfg=Black
hi zshFunction ctermfg=Black
hi zshConditional cterm=Bold ctermfg=Black
hi zshDoubleQuote ctermfg=Black
hi zshTestDoubleQuote ctermfg=Black
hi zshTestSingleQuote ctermfg=Black
hi zshTestOpr ctermfg=Black
hi zshOperator ctermfg=Black
hi zshCommandSub ctermfg=Black
hi zshRange ctermfg=Black
hi zshDerefSimple cterm=Bold ctermfg=Black
hi zshDerefWordError cterm=Bold ctermfg=Black
hi zshPreProc cterm=Bold ctermfg=Black

hi shComment ctermfg=White
hi shVariable ctermfg=Black
hi shFunction ctermfg=Black
hi shConditional cterm=Bold ctermfg=Black
hi shDoubleQuote ctermfg=Black
hi shSingleQuote ctermfg=Black
hi shEcho ctermfg=Black
hi shNumber ctermfg=Black
hi shCmdSubRegion ctermfg=Black
hi PreProc ctermfg=Black
hi shDerefVar ctermfg=Black
hi shTestDoubleQuote ctermfg=Black
hi shTestSingleQuote ctermfg=Black
hi shTestOpr ctermfg=Black
hi shOperator ctermfg=Black
hi shCommandSub ctermfg=Black
hi shRange ctermfg=Black
hi shDerefSimple cterm=Bold ctermfg=Black
hi shDerefWordError cterm=Bold ctermfg=Black
hi shPreProc cterm=Bold ctermfg=Black
hi def link confString String
hi def link confComment Comment

hi fishComment ctermfg=White
hi fishKeyword cterm=Bold ctermfg=Black
hi fishString cterm=Italic ctermfg=Black
hi fishIdentifier ctermfg=Black
hi fishLineContinuation ctermfg=Black

" Unite
hi uniteSource__GrepFile ctermfg=Black
hi uniteSource__GrepSeparator ctermfg=Yellow
hi uniteSource__GrepLineNr ctermfg=White
hi uniteSource__GrepLine ctermfg=Black

hi pythonComment ctermfg=White
hi pythonString cterm=Italic ctermfg=Black
hi pythonEscape cterm=Italic,Bold ctermfg=Black
hi pythonNumber ctermfg=Black

hi gitcommitSelectedType cterm=Bold ctermfg=Black
hi gitcommitComment ctermfg=White
hi gitConfigString cterm=Italic ctermfg=Black

hi hsModule cterm=Bold ctermfg=Black
hi hsStructure cterm=Bold ctermfg=Black
hi hsImport cterm=Bold ctermfg=Black
hi hsImportMod cterm=Bold ctermfg=Black
hi hsLineComment ctermfg=White
hi hsVarSym ctermfg=Black
hi hsNumber ctermfg=Black
hi hsString cterm=Italic ctermfg=Black
hi ConId cterm=Underline ctermfg=Black

hi moonString cterm=italic ctermfg=Black
hi moonAssignString cterm=italic ctermfg=Black
hi moonBoolean cterm=Bold ctermfg=Black
hi moonNumber ctermfg=Black
hi moonFunction ctermfg=Black
hi moonSpecialOp ctermfg=Black
hi moonComment ctermfg=White

hi dockerfileComment ctermfg=White
hi dockerfileString cterm=Italic ctermfg=Black
"hi dockerfileKeywords cterm=Underline ctermfg=Black

hi yamlKeyValueDelimiter ctermfg=black
hi yamlInteger ctermfg=black
hi moonConstant ctermfg=black
hi yamlFlowString cterm=Italic ctermfg=black
hi yamlFlowStringDelimiter cterm=Italic ctermfg=black

hi markdownUrl ctermfg=Black cterm=underline
hi markdownH1 cterm=Bold ctermfg=Black
hi markdownH2 cterm=Bold ctermfg=Black
hi markdownH3 cterm=Bold ctermfg=Black
