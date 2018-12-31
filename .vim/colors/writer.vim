hi clear
set background=light

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "writer"

" Spacegray Palette
" text: #cccccc
" bold text: #cccccc
" selection: #053641
" cursor: #FF00FF
" background: #000000 (95%)
" ------------------------------------------------------------------------
" COLOR/NORMAL                    | BRIGHT/BOLD
" ------------------------------------------------------------------------
" TERM     CTERM          BASE16  |  TERM           CTERM         BASE16
" ------------------------------------------------------------------------
" Black    0 Black        base00  |  Bright Black    8  DarkGrey  base03
" Red      1 DarkRed      base08  |  Bright Red      9  Red       base09
" Green    2 DarkGreen    base0B  |  Bright Green    10 Green     base01
" Yellow   3 Brown        base0A  |  Bright Yellow   11 Yellow    base02
" Blue     4 DarkBlue     base0D  |  Bright Blue     12 Blue      base04
" Magenta  5 DarkMagenta  base0E  |  Bright Magenta  13 Magenta   base06
" Cyan     6 DarkCyan     base0C  |  Bright Cyan     14 Cyan      base0F
" White    7 Grey         base05  |  Bright White    15 White     base07
" ------------------------------------------------------------------------

hi Normal           ctermfg=Black       ctermbg=None        cterm=None
hi CursorLine       ctermfg=None        ctermbg=Magenta     cterm=None
hi Visual           ctermfg=None        ctermbg=Magenta     cterm=None
hi String           ctermfg=Black       ctermbg=None        cterm=Italic
hi Comment          ctermfg=White       ctermbg=None        cterm=None
hi Error            ctermfg=Red         ctermbg=None        cterm=Bold
hi SpellBad         ctermfg=Red         ctermbg=None        cterm=Bold
hi SpellCap         ctermfg=Red         ctermbg=None        cterm=Bold
hi Identifier       ctermfg=Black       ctermbg=None        cterm=Bold
hi Statement        ctermfg=Black       ctermbg=None        cterm=Bold
hi Type             ctermfg=Black       ctermbg=None        cterm=underline
hi Todo             ctermfg=White       ctermbg=Magenta     cterm=Bold,Italic
hi NonText          ctermfg=Magenta      ctermbg=None        cterm=None
hi EndOfBuffer      ctermfg=Magenta     ctermbg=None        cterm=None
hi Pmenu            ctermfg=Black       ctermbg=Magenta     cterm=Bold
hi Search           ctermfg=Blue        ctermbg=None        cterm=None
hi VertSplit        ctermfg=Magenta     ctermbg=Magenta     cterm=None

hi CursorLineNr     ctermfg=Black       ctermbg=None        cterm=None
hi Folded           ctermfg=White       ctermbg=None        cterm=None
hi LineNr           ctermfg=White       ctermbg=None        cterm=None
hi ModeMsg          ctermfg=White       ctermbg=None        cterm=None
hi SpecialKey       ctermfg=White       ctermbg=None        cterm=None
hi Special          ctermfg=White       ctermbg=None        cterm=Bold
hi ErrorMsg         ctermfg=Red         ctermbg=None        cterm=Bold
hi PreProc          ctermfg=Black       ctermbg=None        cterm=None

hi SignColumn ctermbg=None
hi StatusLine ctermbg=Black ctermfg=Magenta
hi StatusLineNormal cterm=None ctermbg=Magenta ctermfg=Black
hi StatusBlue ctermbg=Magenta ctermfg=Blue
hi StatusYellow ctermbg=Magenta ctermfg=Yellow
hi StatusLineNC ctermbg=White ctermfg=Magenta

hi def link vimHiGroup     Normal
hi def link vimGroup       Normal
hi def link vimHiCtermFgBg Identifier
hi def link vimHiCTerm     Identifier

hi! MatchParen ctermfg=Blue ctermbg=None

hi def link qfFileName Normal
hi def link qfSeparator Normal
hi def link qfLineNr String

" Vim
hi def link VimOption       Normal
hi def link VimNotation     Normal
hi def link vimFgBgAttrib   Normal
hi def link vimBracket      Normal
hi def link vimMapModKey    Normal
hi def link vimHiAttrib     Normal
hi def link vimParenSep     Normal
hi def link vimNumber       Normal
hi def link vimContinue     Normal
hi def link vimOper         Normal
hi def link vimLineComment  Comment
hi def link vimComment      Comment
hi def link vimCommentTitle Todo
hi def link vimHighlight    Identifier
hi def link vimAutoCmd      Identifier
hi def link vimCommand      Identifier
hi def link vimIsCommand    Identifier
hi def link vimString       String


" html
hi def link htmlTitle          Normal
hi def link htmlTag            Normal
hi def link htmlLink           Normal
hi def link htmlEndTag         Normal
hi def link htmlH3             Normal
hi def link htmlH2             Normal
hi def link htmlH1             Normal
hi def link htmlTagName        Identifier
hi def link htmlSpecialTagName Identifier
hi def link htmlSpecialChar    Identifier
hi def link htmlString         String
hi def link htmlComment        Comment
hi def link htmlCommentPart    Comment
hi def link htmlH1             Normal
hi def link htmlLink           Normal
hi def link htmlArg            Normal
hi def link erubyDelimiter     Normal

hi def link javaScript                 Normal
hi def link javaScriptSpecialCharacter Normal
hi def link javaScriptComment          Comment
hi def link javaScriptLineComment      Comment
hi def link javaScriptStringS          String
hi def link javaScriptStringD          String
hi def link javaScriptRegexpString     Normal
hi def link javaScriptBoolean          Identifier

hi def link jsNumber            Normal
hi def link jsFloat             Normal
hi def link jsOperator          Normal
hi def link jsTernaryIfOperator Normal
hi def link jsArrowFunction     Normal
hi def link jsFuncName          Normal
hi def link jsStringS           String
hi def link jsStringD           String
hi def link jsRegexpCharClass   Todo
hi def link jsRegexpQuantifier  Todo
hi def link jsRegexpString      Todo
hi def link jsRegexpGroup       Todo
hi def link jsRegexpOr          Todo
hi def link jsSpecial           Todo
hi def link jsBuiltins          String
hi def link jsReturn            Identifier
hi def link jsOperator          Identifier
hi def link jsRepeat            Identifier
hi def link jsGlobalObjects     Normal
hi def link jsThis              Identifier
hi def link jsPrototype         Identifier
hi def link jsSuper             Identifier
hi def link jsHtmlEvents        Identifier
hi def link jsStorageClass      Identifier
hi def link jsFunction          Identifier
hi def link jsConditional       Identifier
hi def link jsNull              Identifier
hi def link jsStatement         Identifier
hi def link jsLabel             Identifier
hi def link jsBooleanTrue       Identifier
hi def link jsBooleanFalse      Identifier
hi def link jsClassKeywords     Identifier
hi def link jsClassMethodType   Identifier
hi def link jsModuleKeywords    Identifier
hi def link jsModuleDefault     Identifier
hi def link jsClassDefinition   Identifier
hi def link jsObjectMethodType  Identifier
hi def link jsObjectFuncName    Normal
hi def link jsClassDefinition   Normal
hi def link jsClassDefinition   Normal
hi def link jsTemplateVar       Normal
hi def link jsConstant          Type
hi def link xmlTag              Normal
hi def link xmlEndTag           Normal
hi def link xmlTagName          Normal
hi def link xmlAttrib           Normal
"
"hi def everythingInJSX                ctermbg=Magenta
"hi def xmlTag                   ctermfg=Black       ctermbg=Magenta     cterm=None
"hi def xmlEndTag                ctermfg=Black       ctermbg=Magenta     cterm=None
"hi def xmlAttrib                ctermfg=Black       ctermbg=Magenta     cterm=None
"hi def xmlEqual                 ctermfg=Black       ctermbg=Magenta     cterm=None
"hi def xmlTagName               ctermfg=Black       ctermbg=Magenta     cterm=None
"hi def xmlString                ctermfg=Black       ctermbg=Magenta     cterm=Italic
hi def link jsLineComment       Comment

hi mustacheMarker ctermbg=Magenta ctermfg=Black
hi mustacheSection ctermbg=Magenta ctermfg=Black
hi mustacheVariable ctermbg=Magenta ctermfg=Black
hi mustachePartial ctermbg=Magenta ctermfg=Black

" JSON
hi def link jsonString  Normal
hi def link jsonKeyword Identifier

" sass
" selectors
hi def link cssTagName       Identifier
hi def link sassClass        Identifier
hi def link sassClassChar    Normal
hi def link sassId           Identifier
hi def link sassIdChar       Normal
hi def link sassProperty     Type
hi def link sassInclude      Identifier
hi def link cssPseudoClassId Normal
hi def link cssAuralAttr     Normal
" junk
hi def link cssBraces      Comment
hi def link sassDefinition Comment
"semicolon
"properties
hi def link sassProperty            Normal
hi def link sassAmpersand           Normal
hi def link sassMixing              Identifier
hi def link sassInclude             Identifier
hi def link cssMedia                Identifier
hi def link scssComment             Comment
hi def link cssComment              Comment
hi def link sassComment             Comment
hi def link cssUnitDecorators       Normal
hi def link cssVendor               Normal
hi def link cssBoxAttr              Normal
hi def link cssTableAttr            Normal
hi def link cssBackgroundAttr       Normal
hi def link cssBorderAttr           Normal
hi def link cssBackgroundAttr       Normal
hi def link cssGradientAttr         Normal
hi def link cssPositioningAttr      Normal
hi def link cssStringQQ             Normal
hi def link cssStringQ              Normal
hi def link cssListAttr             Normal
hi def link cssValueTime            Normal
hi def link cssTransitionAttr       Normal
hi def link cssRenderProp           Type
hi def link cssListProp             Type
hi def link cssBackgroundProp       Type
hi def link cssPositioningProp      Type
hi def link cssDimensionProp        Type
hi def link cssBorderProp           Type
hi def link cssFlexibleBoxProp      Type
hi def link cssTextProp             Type
hi def link cssBoxProp              Type
hi def link cssFontProp             Type
hi def link cssUIProp               Type
hi def link cssColorProp            Type
hi def link cssGeneratedContentProp Type
hi def link cssBorderOutlineProp    Type
hi def link cssMarginProp           Type
hi def link cssPaddingProp          Type
hi def link cssTransitionProp       Type
hi def link cssFunctionName         Type
hi def link cssStringQQ             String
hi def link cssStringQ              String
hi def link cssImportant            String
hi def link cssSelectorOp           Comment
"values
hi def link cssValueLength Normal
hi def link cssValueNumber Normal
hi def link cssValueTime   Normal
hi def link cssColor       Normal
hi def link cssRenderAttr  Normal
hi def link cssUIAttr      Normal
hi def link cssCommonAttr  Normal
hi def link cssTextAttr    Normal
hi def link cssFontAttr    Normal
hi def link cssColorAttr   Normal
hi def link cssUrl         Normal

hi def link sassMixing     Comment

"Coffeescript
hi def link coffeeComment Comment
hi def link coffeeTodo Todo
hi! coffeeExtendedOp ctermfg=Green
hi! coffeeDotAccess ctermfg=Green
hi! coffeeConditional cterm=Bold ctermfg=Green
hi! coffeeParen ctermfg=Green
hi! coffeeParens ctermfg=Green
hi! coffeeCurly ctermfg=Green
hi def link coffeeInterpDelim Comment
hi! coffeeSpecialOp ctermfg=Green
hi def link coffeeString String
hi def link coffeeRegex Normal
hi def link coffeeHeredoc String
hi def link coffeeNumber Normal
hi! coffeeSpecialVar ctermfg=DarkCyan
hi def link coffeeKeyword Identifier
hi def link coffeeRepeat Identifier
hi def link coffeeOperator Identifier
hi def link coffeeStatement Identifier
hi def link coffeeEscape Identifier
hi! coffeeRepeat ctermfg=Green
hi def link coffeeBoolean Identifier
hi def link coffeeRocket Normal
hi def link coffeeObject Type
hi! coffeeObjAssign ctermfg=Green
hi def link coffeeSpecialIdent Normal
hi def link coffeeConstant Normal
hi def link coffeeDotAccess Normal
hi def link coffeeExtendedOp Normal
hi def link coffeeParens Normal
hi def link coffeeParen Normal
hi def link coffeeRepeat Identifier
hi def link coffeeConditional Identifier
hi def link coffeeObjAssign Normal
hi def link coffeeSpecialOp Normal

" Netrw
hi! netrwClassify ctermfg=Green
hi def link netrwExe String
hi def link netrwDir Identifier
hi! netrwTreeBar ctermfg=Yellow

"NERD Tree
hi def link NERDTreeHelp Comment
hi def link NERDTreeDir Identifier
hi def link NERDTreeUp Normal
hi def link NERDTreeCWD Type
hi def link NERDTreeExecFile Normal
hi def link NERDTreeClosable Comment
hi def link NERDTreeOpenable Comment
hi def link NERDTreeExecFile String

" Ruby
hi def link rubyRegexp                 Normal
hi def link rubyRegexpCharClass        Normal
hi def link rubyRegexpSpecial          Normal
hi def link rubyStringDelimiter        Normal
hi def link rubySymbol                 Normal
hi def link rubyInteger                Normal
hi def link rubyFloat                  Normal
hi def link rubyInstanceVariable       Normal
hi def link rubyFunction               Normal
hi def link rubyBlockParameter         Normal
hi def link rubyConstant               Type
hi def link rubyClass                  Identifier
hi def link rubyPseudoVariable         Identifier
hi def link rubyKeyword                Identifier
hi def link rubyAttribute              Identifier
hi def link rubyInclude                Identifier
hi def link rubyDefine                 Identifier
hi def link rubyControl                Identifier
hi def link rubyBoolean                Identifier
hi def link rubyInterpolationDelimiter Identifier
hi def link rubyConditional            Identifier
hi def link rubyException              Identifier
hi def link rubyExceptional            Identifier
hi def link rubyAccess                 Identifier
hi def link rubyOperator               Identifier
hi def link rubyRepeat                 Identifier
hi def link rubyString                 String
hi def link rubyComment                Comment
hi def link rubyDocumentation          Comment
hi def link erubyComment               Comment

" Haml
"hi! hamlRuby ctermbg=Blue
hi def link hamlRubyChar  Identifier
hi def link hamlIdChar    Identifier
hi def link hamlClassChar Identifier
hi def link hamlTag       Identifier
hi def link hamlDoctype   Identifier
hi def link hamlComment   Identifier
hi def link slimDocTypeKeyword Identifier

" Jade
hi def link jadeClassChar       Normal
hi def link jadeTag             Identifier
hi def link jadeScriptStatement Identifier
hi def link jadeDocTyp          Identifier

" C
hi def link cFormat  Identifier
hi def link cType    Identifier
hi def link cRepeat  Identifier
hi def link cSpecial Comment

" Lua
hi def link luaOperator Identifier
hi def link luaStatement Identifier
hi def link luaCond Identifier
hi def link luaElse Identifier
hi def link luaFunction Identifier
hi def link luaComment Comment

" PHP
hi def link phpIdentifier Identifier
hi def link phpRegion Normal
hi def link phpVarSelector Normal
hi def link phpType Identifier
hi def link phpDefine Identifier
hi def link phpConstant Normal
hi def link phpStringSingle String
hi def link phpStringDouble String
hi def link phpOperator Normal
hi def link phpParent Normal
hi def link phpComment Comment
hi def link phpInclude Identifier
hi def link phpStructure Identifier
hi def link phpBoolean Identifier
hi! Delimiter ctermfg=Cyan

" PHP
hi! bladeConditional ctermfg=Blue

" Lisp
hi def link lispNumber Normal
hi def link lispString String
hi def link lispComment Comment

" Clojure
hi def link clojureParen        PreProc
hi def link clojureString       String
hi clojureStringEscape ctermfg=Black       ctermbg=None        cterm=Italic,Bold
hi def link clojureQuote        Normal
hi def link clojureKeyword      Type
hi def link clojureMacro        Identifier
hi def link clojureFunc         Normal
hi def link clojureBoolean      Identifier
hi def link clojureConstant     Identifier
hi def link clojureNumber       Normal
hi def link clojureRegexp       Normal
hi def link clojureDefine       Identifier
hi def link clojureSpecial      Identifier
hi def link clojureDispatch     PreProc
hi def link clojureAnonArg      Identifier
hi def link clojureComment      Comment


" Shells
hi def link zshSubstDelim Normal
hi def link zshSubst Normal
hi def link zshQuoted Normal
hi def link zshDeref Normal
hi def link zshJobSpec Normal
hi def link zshString Normal
hi def link zshComment Comment
hi def link zshVariable Normal
hi def link zshFunction Normal
hi def link zshConditional Identifier
hi def link zshDoubleQuote Normal
hi def link zshTestDoubleQuote Normal
hi def link zshTestSingleQuote Normal
hi def link zshTestOpr Normal
hi def link zshOperator Normal
hi def link zshCommandSub Normal
hi def link zshRange Normal
hi def link zshDerefSimple Identifier
hi def link zshDerefWordError Identifier
hi def link zshPreProc Identifier

hi def link shComment Comment
hi def link shVariable Normal
hi def link shFunction Normal
hi def link shConditional Identifier
hi def link shDoubleQuote Normal
hi def link shSingleQuote Normal
hi def link shEcho Normal
hi def link shNumber Normal
hi def link shCmdSubRegion Normal
hi def link shDerefVar Normal
hi def link shTestDoubleQuote Normal
hi def link shTestSingleQuote Normal
hi def link shTestOpr Normal
hi def link shOperator Normal
hi def link shCommandSub Normal
hi def link shRange Normal
hi def link shDerefSimple Identifier
hi def link shDerefWordError Identifier
hi def link shPreProc Identifier
hi def link confString Normal
hi def link confComment Comment

hi def link fishComment Comment
hi def link fishKeyword Identifier
hi def link fishString String
hi def link fishIdentifier Normal
hi def link fishLineContinuation Normal

" Python
hi def link pythonComment Comment
hi def link pythonString String
hi def link pythonEscape Identifier
hi def link pythonNumber Normal

" Git
hi def link gitcommitSummary Normal
hi def link gitcommitSelectedType Normal
hi def link gitcommitDiscardedType Normal
hi def link gitcommitSelectedFile Type
hi def link gitcommitDiscardedFile Type
hi def link gitcommitBranch Identifier
hi def link gitcommitComment Comment
hi def link gitcommitHeader Comment
hi def link gitConfigString String
hi def link gitcommitOverflow Error

" Haskell
hi def link hsModule      Identifier
hi def link hsStructure   Identifier
hi def link hsImport      Identifier
hi def link hsImportMod   Identifier
hi def link hsLineComment Comment
hi def link hsVarSym      Normal
hi def link hsNumber      Normal
hi def link hsString      String
hi def link ConId         Type

" Moonscript
hi def link moonString       String
hi def link moonAssignString String
hi def link moonBoolean      Identifier
hi def link moonNumber       Normal
hi def link moonFunction     Normal
hi def link moonSpecialOp    Normal
hi def link moonComment      Comment

" Dockerfile
hi def link dockerfileComment Comment
hi def link dockerfileString String
"hi def link dockerfileKeywords cterm=Underline Normal

" YAML
hi def link yamlBlockMappingKey          Normal
hi def link yamlKeyValueDelimiter        Normal
hi def link yamlBlockCollectionItemStart Normal
hi def link yamlInteger                  Normal
hi def link moonConstant                 Normal
hi def link yamlBool                     Identifier
hi def link yamlFlowString               String
hi def link yamlFlowStringDelimiter      String

" Markdown
hi def link markdownUrl Type
hi def link markdownH1  Identifier
hi def link markdownH2  Identifier
hi def link markdownH3  Identifier

" Mutt
hi def link muttrcStatusFormatEscapes Identifier
hi def link muttrcStrftimeEscapes     Identifier
hi def link muttrcEscape              Identifier
hi def link muttrcKeyName             Identifier
hi def link muttrcStatusFormatStr     String
hi def link muttrcString              String
hi def link muttrcMacroDescr          String
hi def link muttrcRXString2           String
hi def link muttrcRXString            String
hi def link muttrcRXChars             Identifier
hi def link muttrcPattern             Identifier
hi def link muttrcKeySpecial          Identifier
hi def link muttrcSetNumAssignment    Normal
hi def link muttrcSetStrAssignment    Normal
hi def link muttrcComment             Comment


" Hoon
hi def link hoonComment  Comment
hi def link hoonRune  Normal
hi def link hoonAtom  Normal
hi def link hoonNumber  Normal
hi def link hoonString String
hi def link hoonSymbol Identifier

" Ale
hi link ALEErrorSign Error
hi link ALEWarningSign Comment
