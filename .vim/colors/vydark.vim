"
" Vim colour file
"
" Maintainer:  Vy-Shane Sin Fat <shane@node.mu>
" Version:     1.2
"
" This colour file is meant for GUI use.
"

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="vydark"


hi Normal        ctermfg=None  ctermbg=None
hi Title         ctermfg=15
hi Cursor        ctermfg=15
hi LineNr        ctermfg=3  ctermbg=None
"hi Visual        ctermfg=#555555
hi NonText       ctermfg=0  ctermbg=None
"hi StatusLine    ctermfg=#bbbbbb  ctermbg=#353535  cterm=none
"hi StatusLineNC  ctermfg=#777777  ctermbg=#353535  cterm=none
hi VertSplit     ctermfg=7  ctermbg=7  cterm=none
hi ModeMsg       ctermfg=10  ctermbg=2  cterm=none
"hi ErrorMsg      ctermfg=#222222  ctermbg=#ff8888  cterm=none
"hi Error         ctermfg=#ffaaaa  ctermbg=#333333  cterm=none
hi Folded        ctermfg=11  ctermbg=5


" Vim 7.x specific
if version >= 700
  "hi MatchParen  ctermfg=#364836  cterm=none
  "hi Pmenu       ctermfg=#bbbbbb  ctermbg=#444444  cterm=none
  "hi PmenuSel    ctermfg=#222222  ctermbg=#99bbdd  cterm=none
  "hi PmenuSbar   ctermfg=#494949  ctermbg=#494949  cterm=bold
  "hi PmenuThumb  ctermfg=#666666  ctermbg=#666666  cterm=bold
  "hi Search      ctermfg=#dddd99  ctermbg=#444433  cterm=none
  "hi IncSearch   ctermfg=#eeeeaa  ctermbg=#666633  cterm=bold
  hi CursorLine  ctermbg=7  cterm=none
  "hi ColorColumn ctermfg=#252525
  "hi SpellBad    ctermsp=#774444
  "hi SpellCap    ctermsp=#774444
  "hi SpellLocal  ctermsp=#774444
  "hi SpellRare   ctermsp=#774444
endif


" Syntax highlighting 
hi Comment       ctermfg=11  cterm=none
hi Todo          ctermfg=11  ctermbg=14  cterm=italic
hi Operator      ctermfg=None  cterm=none
hi Identifier    ctermfg=None  cterm=none
hi Statement     ctermfg=None  cterm=none
hi Type          ctermfg=4  cterm=none
hi Constant      ctermfg=10  cterm=none
hi Conditional   ctermfg=4  cterm=none
hi Delimiter     ctermfg=4  cterm=none
hi PreProc       ctermfg=6  cterm=none
hi Special       ctermfg=10  cterm=bold
hi Keyword       ctermfg=None  cterm=none

hi link Function        Normal
hi link Character       Constant
hi link String          Constant
hi link Boolean         Constant
hi link Number          Constant
hi link Float           Number
hi link Repeat          Conditional
hi link Label           Statement
hi link Exception       Statement
hi link Include         Normal
hi link Define          Type
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link SpecialComment  Special
hi link Debug           Special

