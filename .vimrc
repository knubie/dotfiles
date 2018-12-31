set nocompatible "Drop vi compitiblity
set shell=bash
let $SHELL='bash'

" ====================== Vim-plug ======================
set rtp+=~/.fzf
set rtp+=~/.vim/bundle/vim-owl
call plug#begin('~/.vim/bundle')

"Plug 'kien/ctrlp.vim'
"Plug 'junegunn/fzf'
Plug '/usr/local/opt/fzf'
"Plug 'sjl/gundo.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
"Plug 'knubie/nerdtree-git-plugin'
"Plug 'tpope/vim-fugitive'
"Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'eapache/auto-pairs'
"Plug 'vim-scripts/YankRing.vim'
"Plug 'godlygeek/tabular'
Plug 'junegunn/vim-easy-align', { 'on': 'EasyAlign' }
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vim-pseudocl'
Plug 'junegunn/vim-fnr'
"Plug 'terryma/vim-multiple-cursors'
"Plug 'Shougo/neocomplcache.vim'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets' | Plug 'honza/vim-snippets'
"Plug 'rking/ag.vim'
"Plug 'Shougo/unite.vim'
"Plug 'Shougo/vimproc'
"Plug 'Townk/vim-autoclose'
"Plug 'bruno-/vim-husk'
"Plug 'zirrostig/vim-schlepp'
Plug 'michaeljsmith/vim-indent-object'
"Plug 'benmills/vimux'
Plug 'kana/vim-textobj-user'
"Plug 'christoomey/vim-tmux-navigator'
Plug 'aserebryakov/vim-todo-lists'

Plug 'leafo/moonscript-vim', { 'for': 'moonscript' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee-script' }
"Plug 'tpope/vim-haml'
"Plug 'digitaltoad/vim-jade'
"Plug 'juvenn/mustache.vim'
Plug 'dag/vim-fish', { 'for': 'fish' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'rhysd/vim-textobj-ruby', { 'for': 'ruby' }
Plug 'mxw/vim-jsx'
Plug 'urbit/hoon.vim', { 'for': 'hoon' }
"Plug 'xsbeats/vim-blade'
"Plug 'derekwyatt/vim-scala'
Plug 'ekalinin/Dockerfile.vim', { 'for': 'Dockerfile' }
"Plug 'rhysd/clever-f.vim'
"Plug 'Shougo/neocomplete.vim'
Plug 'zxqfl/tabnine-vim'
Plug 'ternjs/tern_for_vim', { 'for': 'javascript' }
if v:version >= 703
  Plug 'junegunn/vim-after-object'
endif
"Plug 'skywind3000/asyncrun.vim'

if v:version >= 800
  Plug 'w0rp/ale'
endif

"Plug 'chriskempson/base16-vim'

call plug#end()

" ================= Syntax / Colors ==================
syntax enable
"colorscheme base16-mocha
colorscheme writer
"colorscheme base16
"colorscheme spacegray
"colorscheme spacegray_minimal
"match Error /\%81v.\+/ "Characters after 80 turn red
"set background=light
"colorscheme solarized
"set background=dark

" ====================== Misc. =======================
set modelines=0 "Security fix
set fileencoding=utf-8
set encoding=utf-8
set scrolloff=60 " Set to 99 to keep cursor in the middle
set lazyredraw
set showmode
"set showcmd " This is what was causing the cursor to disapear!
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set relativenumber
set number
set numberwidth=3
set ttyfast
set backspace=indent,eol,start
let loaded_matchparen = 0
set noruler
set autoread
"set vb t_vb=^[[?5h$<100>^[[?5l
set vb t_vb=
set laststatus=2 "0=never, 1=(default)two or more windows, 2=always
set statusline=\ \ \ %#StatusLineNormal#%{fnamemodify(expand('%:p:h'),':~:.')}/%#StatusLine#%t\ %#StatusBlue#%{&mod\ ?\ '•'\ :\ ''}\ %#StatusYellow#%{StatusLineWarning()\ ?\ ''\ :\ '\ '}%#StatusLine#

function! StatusLineWarning() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:errors = l:counts.error
  return l:errors == 0 "? '' : '%#StatusBlue#'
endfunction

function! s:RefreshStatus()
	for nr in range(1, winnr('$'))
		if nr == winnr()
			call setwinvar(nr, '&statusline', "\ \ \ %#StatusLineNormal#%{fnamemodify(expand('%:p:h'),':~:.')}/%#StatusLine#%t\ %#StatusBlue#%{&mod\ ?\ '•'\ :\ ''}\ %#StatusYellow#%{StatusLineWarning()\ ?\ ''\ :\ '\ '}%#StatusLine#")
		else
			call setwinvar(nr, '&statusline', "%#StatusLineNC#\ \ \ %t\ %#StatusBlue#%{&mod\ ?\ '•'\ :\ ''}\ %#StatusYellow#%{StatusLineWarning()\ ?\ ''\ :\ '\ '}%#StatusLineNC#")
		endif
	endfor
endfunction

augroup status
  autocmd!
  autocmd VimEnter,WinEnter,BufWinEnter * call <SID>RefreshStatus()
augroup END
set wrap
set linebreak
"set mouse=a
" show syntax group
map ,hi :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>
let g:ruby_path = system('echo $HOME/.rbenv/shims') " makes ruby files faster
set re=1 " Uses old regex version for syntax, needed for ruby files

" ====================== Yanking =====================
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction

function! s:Repl()
    let s:restore_reg = @"
    return "p@=RestoreRegister()\<cr>"
endfunction

" NB: this supports "rp that replaces the selection by the contents of @r
vnoremap <silent> <expr> p <sid>Repl()

" ================= Tabs / Indentation ===============
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab "Make tabs spaces
set autoindent

" =================== Show Invisibles ================
" Shortcut to rapidly toggle `set list`
nnoremap <leader>l :set list!<CR>

" Use the same symbols as Sublime for tabstops and EOLs
set listchars=tab:──,eol:↳


" ================= Leader / Remaps =================
"let g:NERDTreeQuitOnOpen=0
"let g:NERDTreeHijackNetrw=1
let g:netrw_liststyle=3
let g:netrw_banner=0
let mapleader = ","
nnoremap <leader>c <plug>NERDComToggleComment
"nnoremap <leader>e :e.<cr>
"nnoremap <leader>e :buffer NERD_tree_1<CR>
"nnoremap <leader>u :GundoToggle<CR>
nnoremap <tab> ;
nnoremap <s-tab> ,
nnoremap ; :
"inoremap jj <ESC>
"nnoremap <space> :CtrlP<cr>
nnoremap <space> :FZF<cr>
noremap <leader>v :w !pbcopy<cr><cr>
noremap H ^
noremap L g_
" Keep cursor centered
"nnoremap <C-U> <C-U>zz
"nnoremap <C-D> <C-D>zz
"nnoremap j jzz
"nnoremap k kzz
"vnoremap j jzz
"vnoremap k kzz
"nnoremap n nzz
"nnoremap N Nzz
"nnoremap u uzz
"nnoremap G Gzz
"nnoremap dd ddzz
"nnoremap zO zOzz
"autocmd BufWinEnter * :normal z.
" Fix yank jank
"vnoremap y myy`y
"vnoremap Y myY`y

" Fold everything except under cursor
"nnoremap zz zMzvzczOzz
"nnoremap zR zRzz

"function! YRRunAfterMaps()
  "nnoremap Y :<C-U>YRYankCount 'y$'<CR>
"endfunction
inoremap <c-o> <esc>o
inoremap <c-o> <esc>o
vnoremap < <gv
vnoremap > >gv
"nmap t o<ESC>k
"nmap T O<ESC>
map <Leader>a ggVG
"map <Leader>d :TernDef<cr>
"map <Leader>d :w !diff -u % - | sed 1,2d | sed 's/^./& /' | grcat conf.diff<cr>

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

vmap <unique> <up>    <Plug>SchleppUp
vmap <unique> <down>  <Plug>SchleppDown
vmap <unique> <left>  <Plug>SchleppLeft
vmap <unique> <right> <Plug>SchleppRight

"nnoremap <leader>t :silent !tmux split-window -h 'tig status'<cr>

"let g:clever_f_across_no_line = 1

" =================== Searching ======================
"nnoremap / /\v
"vnoremap / /\v
set ignorecase
set smartcase
""set gdefault
set incsearch
set hlsearch
nnoremap <silent><leader>, :noh<CR>
"nnoremap <Leader>f :Unite grep:.::<CR>

" ===================== Splits =======================
nnoremap <leader>w <C-w>v<C-w>l
"nnoremap <leader>w <C-w>S<C-w>j
nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

augroup reduce_noise
  autocmd!
  " Automatically resize vertical splits.
  ":au WinEnter * :set winfixwidth
  autocmd WinEnter * :set winwidth=84
  "autocmd WinEnter * :set winheight=150
  autocmd WinEnter * :wincmd =

  " Vertical split character
  ":set fillchars+=vert:\|

  " Show line numbers and cursorline in current window
  autocmd WinEnter * setlocal cursorline
  autocmd WinEnter * setlocal relativenumber
  autocmd WinEnter * setlocal number
  autocmd WinEnter * match

  autocmd CursorMoved * setlocal cursorline
  autocmd CursorMoved * setlocal relativenumber
  autocmd CursorMoved * setlocal number

  autocmd WinLeave * setlocal nocursorline
  autocmd WinLeave * setlocal norelativenumber
  autocmd WinLeave * setlocal nonumber
  autocmd WinLeave * match Comment '\%>0v.\+'
augroup END

" Change cursor in Insert mode
let &t_EI .= "\<Esc>[2 q"
"let &t_ti .= "\<Esc>[2 q"
let &t_SI .= "\<Esc>[6 q"
"0/1=blinking block, 2=solid block, 3=blinking underscore,
"4=solid underscore, 5=blinking vertical line, 6=solid vertical line

augroup set_cursor
  autocmd!
  autocmd VimEnter * exec ':silent !set_cursor block'
  autocmd VimLeave * exec ':silent !set_cursor line'
augroup END

set timeout " Do time out on mappings and others
set timeoutlen=1000 " Wait {num} ms before timing out a mapping

" When you’re pressing Escape to leave insert mode in the terminal, it will by
" default take a second or another keystroke to leave insert mode completely
" and update the statusline. This fixes that. I got this from:
" https://powerline.readthedocs.org/en/latest/tipstricks.html#vim
if !has('gui_running')
  set ttimeoutlen=10
  augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
  augroup END
endif


" ===================== Folding ======================
set foldmethod=indent
"set nofoldenable
""set foldlevel=99
""set foldnestmax=10
""set foldlevel=1
set foldlevelstart=99 " Prevent vim from folding all lines initially
""set foldlevelstart=1 " Files open pre-folded
set foldminlines=0
set foldignore="" " Remove insane default foldignore of '#'
"" Toggle folds
"if &l:buftype != 'quickfix'
  "nnoremap <cr> zazz
"endif
if &l:buftype != 'quickfix'
  nnoremap <cr> za
endif

"augroup save_folds
  ""Save folds when closing a file
  "au BufWinLeave * silent! mkview
  "au BufWinEnter * silent! loadview
"augroup END

" Set a nicer foldtext function
:set foldtext=MyFoldText()
function MyFoldText()
  let lines = v:foldend - v:foldstart + 1
  return v:folddashes . v:folddashes . lines
endfunction

" ================== Autocomplete ====================
"let g:neocomplete#enable_at_startup = 0
"let g:neocomplete#enable_auto_select = 1
" Use <TAB> to complete snippet
"imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" Use Honza's snippets
"let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

" ============= Distraction Free Mode ================
"let g:centerinscreen_active = 0
"function! ToggleCenterInScreen(desired_width)
  "if g:centerinscreen_active == 0
    "let l:window_width = winwidth(winnr())
    "let l:sidepanel_width = (l:window_width - a:desired_width) / 2
    "exec("silent leftabove " . l:sidepanel_width . "vsplit new")
    "wincmd l
    "exec("silent rightbelow " . l:sidepanel_width . "vsplit new")
    "wincmd h
    "set norelativenumber
    "hi! VertSplit ctermbg=Yellow ctermfg=Yellow
    ""hi! CursorLine ctermbg=None cterm=None
    "let g:centerinscreen_active = 1
  "else
    "wincmd h
    "close
    "wincmd l
    "close
    "set relativenumber
    "hi! VertSplit ctermbg=Magenta ctermfg=Magenta
    ""hi! CursorLine ctermbg=Magenta cterm=None
    "let g:centerinscreen_active = 0
  "endif
"endfunction
"nnoremap <Leader>x :exec ToggleCenterInScreen(83)<CR>

" ============ Backups / Swaps / Undo ================
set undofile
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
  set undodir=~/.vim/undo
endif

" ============== Autosave / Autoload =================
":au FocusLost * :wa
":au FocusLost * silent! wa
":au FocusGained * :checktime

" ==================== F2 Paste ======================
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" Move a line of text using Comamnd+[jk]
"nmap <C-j> mz:m+<cr>`z
"nmap <C-k> mz:m-2<cr>`z
"vmap <C-j> :m'>+<cr>`<my`>mzgv`yo`z
"vmap <C-k> :m'<-2<cr>`>my`<mzgv`yo`z

" ================ Tmux Statusline ===================
"augroup tmux_status
  "autocmd!
  "autocmd BufEnter * silent execute '!tmux_set_status.sh ' . expand("%:h") . ' ' . expand("%:t")
  "autocmd BufWinEnter * silent execute '!tmux_set_status.sh ' . expand("%:h") . ' ' . expand("%:t")
  "autocmd BufWritePost * silent execute '!tmux_set_status.sh ' . expand("%:h") . ' ' . expand("%:t")
"augroup END

"augroup get_mod
  "autocmd CursorMovedI * if &l:modified | silent execute '!tmux_set_status.sh ' . expand("%:t") . '+ ' . expand("%:h") | execute 'autocmd! get_mod' | endif
"augroup END

" ===================== Vimux ========================
" Reload chrome
"nmap <Leader>rr :AsyncRun osascript -e 'tell application "Google Chrome" to tell the active tab of its first window to reload'<CR>
"" Run the current file with rspec
"nmap <Leader>rb :call VimuxRunCommand("clear; rspec " . bufname("%"))<CR>
"" Run the current file with rspec -- failures only
"nmap <Leader>rf :call VimuxRunCommand("clear; rspec " . bufname("%") . " --only-failures")<CR>
"" Run the current file at the cursor with rspec
"nmap <Leader>rs :call VimuxRunCommand("clear; rspec " . bufname("%") . ":" . line("."))<CR>
"" Prompt for a command to run
"nmap <Leader>rp :VimuxPromptCommand<CR>
""map ep :PromptVimTmuxCommand<cr>
"" Run last command executed by RunVimTmuxCommand
"nmap <Leader>rl :VimuxRunLastCommand<CR>
""map el :RunLastVimTmuxCommand<cr>
"" Inspect runner pane
"nmap <Leader>ri :VimuxInspectRunner<CR>
""map ei :InspectVimTmuxRunner<cr>
"" Close all other tmux panes in current window
"nmap <esc> :VimuxCloseRunner<CR>
""map ex :CloseVimTmuxPanes<cr>
"" Interrupt any command running in the runner pane
"nmap <Leader>es :VimuxInterruptRunner<CR>
""map es :InterruptVimTmuxRunner<cr>
"let g:VimuxHeight = "30"
"let g:VimuxOrientation = "h"

" Run the current file at the cursor with rspec
"nmap <Leader>rs :call VimuxRunCommand("clear; rspec " . bufname("%") . ":" . line("."))<CR>
"nmap <Leader>rs :silent !kitty @ new-window --keep-focus --title ruby-specs --cwd ~/Code/cmn-admin<CR>
"nmap <Leader>rs :silent !kitty @ close-window --match title:ruby-specs; kitty @ new-window --keep-focus --title ruby-specs --cwd ~/Code/cmn-admin; kitty @ send-text --match title:ruby-specs 'rspec bufname("%"):line(".")\x0a'<CR>

" kitty @ close-window --match title:ruby-specs
" kitty @ new-window --keep-focus --title ruby-specs --cwd getcdw()
" kitty @ send-text --match title:ruby-specs "rspec bufname:linenum\x0a"

"nmap <Leader>rs :execute "silent !kitty @ close-window --match title:ruby-specs" \ . "; kitty @ new-window --keep-focus --title ruby-specs --cwd " . getcwd() . ""<CR>
nmap <Leader>ro :call NewKittyWindow("ruby-specs")<CR>
nmap <Leader>rc :call CloseKittyWindow("ruby-specs")<CR>
nmap <Leader>rs :call SendToKitty("ruby-specs", "clear; rspec " . bufname("%") . ":" . line(".") . "\\x0a")<CR>
nmap <Leader>rb :call SendToKitty("ruby-specs", "clear; rspec " . bufname("%") . "\\x0a")<CR>
nmap <Leader>rl :call SendLastToKitty("ruby-specs")<CR>

function! NewKittyWindow(title)
  return system("kitty @ new-window --keep-focus --title " . a:title . " --cwd " . getcwd())
endfunction

function! CloseKittyWindow(title)
  let _close = system("kitty @ close-window --match title:" . a:title)
endfunction

function! SendToKitty(title, text)
  let g:KittyLastCommand = a:text
  return system("kitty @ send-text --match title:" . a:title . " \"" . a:text . "\"")
endfunction

function! SendLastToKitty(title)
  if exists("g:KittyLastCommand")
    call SendToKitty(a:title, g:KittyLastCommand)
  else
    echo "No last kitty command."
  endif
endfunction


" ===================== Ctrlp ========================
"set wildignore+=*/tmp/*,*/node_modules/*,*.css,*.png,*.jpg,*/pub/*
"let g:ctrlp_working_path_mode = 0

" ================= neocomplcache ====================
"let g:neocomplcache_enable_at_startup = 1
" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" SuperTab like snippets behavior.
"imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"\ "\<Plug>(neosnippet_expand_or_jump)"
"\: pumvisible() ? "\<C-n>" : "\<TAB>"
"smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"\ "\<Plug>(neosnippet_expand_or_jump)"
"\: "\<TAB>"
"" Enable snipMate compatibility feature.
"let g:neosnippet#enable_snipmate_compatibility = 1
"" Tell Neosnippet about the other snippets
"let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

" =================== Syntastic ======================
"let g:syntastic_mode_map = { 'mode': 'active',
  "\ 'active_filetypes': [],
  "\ 'passive_filetypes': [] }
"let g:syntastic_error_symbol = '●'
"let g:syntastic_warning_symbol = '!'

" ================ Default colors ====================
"hi! Folded ctermbg=None ctermfg=Black
"hi! Comment ctermbg=None ctermfg=Black
"hi! LineNr ctermbg=None ctermfg=Black

" ========== Next and Last text objects ==============
"
" https://gist.github.com/sjl/3762227

" Motion for "next/last object".  "Last" here means "previous", not "final".
" Unfortunately the "p" motion was already taken for paragraphs.
"
" Next acts on the next object of the given type in the current line, last acts
" on the previous object of the given type in the current line.
"
" Currently only works for (, [, {, b, r, B, ', and ".

onoremap an :<c-u>call <SID>NextTextObject('a', 'f')<cr>
xnoremap an :<c-u>call <SID>NextTextObject('a', 'f')<cr>
onoremap in :<c-u>call <SID>NextTextObject('i', 'f')<cr>
xnoremap in :<c-u>call <SID>NextTextObject('i', 'f')<cr>

onoremap al :<c-u>call <SID>NextTextObject('a', 'F')<cr>
xnoremap al :<c-u>call <SID>NextTextObject('a', 'F')<cr>
onoremap il :<c-u>call <SID>NextTextObject('i', 'F')<cr>
xnoremap il :<c-u>call <SID>NextTextObject('i', 'F')<cr>

function! s:NextTextObject(motion, dir)
  let c = nr2char(getchar())

  if c ==# "b"
      let c = "("
  elseif c ==# "B"
      let c = "{"
  elseif c ==# "r"
      let c = "["
  endif

  exe "normal! ".a:dir.c."v".a:motion.c
endfunction

" ========== Unite ==============
"let g:unite_enable_start_insert = 1
"let g:unite_enable_short_source_names = 1
"let g:unite_winheight = 10
"let g:unite_split_rule = 'botright'
"call unite#filters#matcher_default#use(['matcher_fuzzy'])
"call unite#filters#sorter_default#use(['sorter_rank'])
"nnoremap <silent> <leader>f :<C-u>Unite grep:.::<CR>
"if executable('ag')
  "" Use ag in unite grep source.
  "let g:unite_source_grep_command = 'ag'
  "let g:unite_source_grep_default_opts =
  "\ '--line-numbers --nocolor --nogroup --hidden --ignore ' .
  "\  '''.hg'' --ignore ''.meteor'' --ignore ''.css'' --ignore ''*/vendor/*'' --ignore ''.git'' --ignore ''.bzr'''
  "let g:unite_source_grep_recursive_opt = ''
"endif

" ==== Grep ====
"set grepprg=ag\ --vimgrep\ $*
"set grepprg=ag\ --nogroup\ --nocolor
"set grepformat=%f:%l:%c:%m
":silent grep! foo /path | copen

" Load localvimrc file
set exrc


" ====== Ternjs =========
set completeopt-=preview


" ======= JSX ===========
let g:jsx_ext_required = 0

let $FZF_DEFAULT_COMMAND = 'ag -l --ignore "node_modules/" -g ""'

" ========== Auto Pairs ============
let g:AutoPairsUseInsertedCount = 1 

" ========== Goyo ============
function! s:goyo_enter()
  silent !tmux set status off
  silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  hi! NonText          ctermfg=Yellow      ctermbg=None        cterm=None
  hi! StatusLine       ctermfg=Yellow      ctermbg=None        cterm=None
  hi! StatusLineNC     ctermfg=Yellow      ctermbg=None        cterm=None
endfunction
function! s:goyo_leave()
  silent !tmux set status on
  silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" ========== Limelight ============
let g:limelight_conceal_ctermfg = 'white'
let g:limelight_conceal_ctermbg = 'black'
"autocmd! User GoyoEnter Limelight
"autocmd! User GoyoLeave Limelight!

" ========== Strikethrough ============
" modify selected text using combining diacritics
command! -range -nargs=0 Overline        call s:CombineSelection(<line1>, <line2>, '0305')
command! -range -nargs=0 Underline       call s:CombineSelection(<line1>, <line2>, '0332')
command! -range -nargs=0 DoubleUnderline call s:CombineSelection(<line1>, <line2>, '0333')
command! -range -nargs=0 Strikethrough   call s:CombineSelection(<line1>, <line2>, '0336')

function! s:CombineSelection(line1, line2, cp)
  execute 'let char = "\u'.a:cp.'"'
  execute a:line1.','.a:line2.'s/\%V[^[:cntrl:]]/&'.char.'/ge'
endfunction

" ============== JSX ==============
let g:jsx_ext_required = 0

" ========== Ale ============
let g:ale_sign_error = ''
let g:ale_sign_warning = ''
let g:ale_sign_column_always = 1
let g:ale_linters = { 'ruby': ['rubocop', 'ruby'], }
"let g:ale_linters = { 'ruby': ['ruby'], }
