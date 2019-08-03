" ===================== Plugins ======================
call plug#begin('~/.local/share/nvim/plugged')
Plug '/usr/local/opt/fzf'
Plug 'knubie/vim-kitty-navigator'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/vim-easy-align'
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-commentary'
"Plug 'tveskag/nvim-blame-line'
Plug '~/Code/nvim-blame-line'
"Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
"Plug 'junegunn/goyo.vim'
Plug 'terryma/vim-multiple-cursors'

" snipmate
Plug 'MarcWeber/vim-addon-mw-utils' | Plug 'tomtom/tlib_vim' | Plug 'garbas/vim-snipmate'

Plug 'guns/vim-sexp',          { 'for': 'clojure' }
"Plug 'tpope/vim-fireplace',    { 'for': 'clojure' }
Plug 'eraserhd/parinfer-rust', { 'for': 'clojure', 'do': 'cargo build --release'}
Plug 'liquidz/vim-iced',       { 'for': 'clojure', 'branch': 'dev' }

"Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
Plug 'HerringtonDarkholme/yats.vim', { 'for': 'typescript' }

Plug 'kshenoy/vim-signature'

"Plug 'chriskempson/base16-vim'
call plug#end()


" ================= Syntax / Colors ==================
colorscheme writer
"colorscheme base16-default-dark


" ====================== Misc. =======================
set scrolloff=60 " Set to 99 to keep cursor in the middle
set cursorline
set relativenumber
set number
set numberwidth=3
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab "Make tabs spaces
set autoindent
set hidden " Keep buffers around when closed
"let g:netrw_liststyle=3
"let g:netrw_banner=0
"let g:netrw_list_hide=netrw_gitignore#Hide()
"set termguicolors "Can use guifg, guibg, guisp
set lazyredraw


" ================= Leader / Remaps =================
let mapleader = ","
nnoremap <tab> ;
nnoremap <s-tab> ,
nnoremap ; :
noremap H ^
noremap L g_
" nnoremap j jzz
" nnoremap k kzz
" nnoremap h hzz
" nnoremap l lzz
" nnoremap G Gzz
" nnoremap <C-d> <C-d>zz
" nnoremap <C-u> <C-u>zz
nnoremap <leader>w <C-w>v<C-w>l
"nnoremap <C-h> <C-w>h
"nnoremap <C-l> <C-w>l
inoremap <c-o> <esc>o
inoremap <c-o> <esc>o
vnoremap < <gv
vnoremap > >gv
map <Leader>a ggVG
inoremap <m--> <esc>79A-<esc>d79|
vnoremap / y/<C-R>"<CR>N
nnoremap ? viwy/<C-R>"<CR>N
nnoremap <leader>b :SingleBlameLine<cr>
map <leader>s :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

nnoremap ci_ T_ct_
nnoremap ci- T-ct-
nnoremap vi_ T_vt_
nnoremap vi- T-vt-


" ================== Status Line =====================
set laststatus=2 "0=never, 1=(default)two or more windows, 2=always
set statusline=\ %#StatusLineNormal#%{fnamemodify(expand('%:p:h'),':~:.')}/%#StatusLine#%t\ %#StatusBlue#%{&mod\ ?\ '•'\ :\ ''}%#StatusLine#

function! s:RefreshStatus()
	for nr in range(1, winnr('$'))
		if nr == winnr()
			call setwinvar(nr, '&statusline', "\ %#StatusLineNormal#%{fnamemodify(expand('%:p:h'),':~:.')}/%#StatusLine#%t\ %#StatusBlue#%{&mod\ ?\ '•'\ :\ ''}%#StatusLine#")
		else
			call setwinvar(nr, '&statusline', "%#StatusLineNC#\ %t\ %#StatusBlue#%{&mod\ ?\ '•'\ :\ ''}%#StatusLineNC#")
		endif
	endfor
endfunction

augroup status
  autocmd!
  autocmd VimEnter,WinEnter,BufWinEnter * call <SID>RefreshStatus()
augroup END


" ====================== FZF =========================
nnoremap <space> :FZF<cr>
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler


" =================== NERDTree =======================
let loaded_netrwPlugin = 1 " Disable netrw
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeMapJumpNextSibling = '' " disable <C-j>
let g:NERDTreeMapJumpPrevSibling = '' " disable <C-k>


" =================== Searching ======================
set ignorecase
set smartcase
""set gdefault
set incsearch
set hlsearch
nnoremap <silent><leader>, :noh<CR>

augroup reduce_noise
  autocmd!
  " Automatically resize vertical splits.
  autocmd WinEnter * :set winwidth=86 " 5 columns for gutter + linenum
  autocmd WinEnter * :wincmd =
  " autocmd WinEnter * :normal zz

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


" ===================== Folding ======================
set foldmethod=indent
set foldlevelstart=99 " Prevent vim from folding all lines initially
set foldminlines=0
set foldignore="" " Remove insane default foldignore of '#'
if &l:buftype != 'quickfix'
  nnoremap <cr> za
endif

" Set a nicer foldtext function
" Use scissors: ✁
set foldtext=MyFoldText()
function MyFoldText()
  let lines = v:foldend - v:foldstart + 1
  repeat("··", v:foldlevel)
  return repeat("··", v:foldlevel) . lines
endfunction


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


" ============ Backups / Swaps / Undo ================
set undofile
"set backupdir=~/.vim/backups
"set directory=~/.vim/swaps
"if exists("&undodir")
"  set undodir=~/.vim/undo
"endif


" ================== vim-sexp ========================
let g:sexp_enable_insert_mode_mappings = 0


" ================== Snippets ========================


" ==================== Sneak =========================
map <tab>   <Plug>Sneak_;
map <s-tab> <Plug>Sneak_,<Paste>


" ================ LanguageClient ====================
" Required for operations modifying multiple buffers like rename.
set hidden

" Always show the gutter, even when it's empty.
set signcolumn=yes

let g:LanguageClient_diagnosticsDisplay = {
  \ 1: {
  \   "name": "Error",
  \   "texthl": "ALEError",
  \   "signText": "",
  \   "signTexthl": "ALEErrorSign",
  \   "virtualTexthl": "Error",
  \ },
  \ 2: {
  \   "name": "Warning",
  \   "texthl": "ALEWarning",
  \   "signText": "",
  \   "signTexthl": "ALEWarningSign",
  \   "virtualTexthl": "Todo",
  \ },
  \ 3: {
  \   "name": "Information",
  \   "texthl": "ALEInfo",
  \   "signText": "ℹ",
  \   "signTexthl": "ALEInfoSign",
  \   "virtualTexthl": "VirtualText",
  \ },
  \ 4: {
  \   "name": "Hint",
  \   "texthl": "ALEInfo",
  \   "signText": "",
  \   "signTexthl": "ALEInfoSign",
  \   "virtualTexthl": "VirtualText",
  \ },
  \ }

    "\ 'typescript': ['~/Code/javascript-typescript-langserver/lib/language-server-stdio.js'],
    "\ 'typescript.tsx': ['~/Code/javascript-typescript-langserver/lib/language-server-stdio.js'],
let g:LanguageClient_serverCommands = {
    \ 'clojure': ['~/.bin/clojure-lsp'],
    \ 'typescript': ['typescript-language-server', '--stdio', '--tsserver-path', 'node_modules/.bin/tsserver'],
    \ 'typescript.tsx': ['typescript-language-server', '--stdio', '--tsserver-path', 'node_modules/.bin/tsserver'],
    \ }

nnoremap <leader>d <C-w>v<C-w>l :call LanguageClient#textDocument_definition()<CR>



let g:iced_enable_auto_indent = v:false


" ================ Kitty Commands ====================

nmap <Leader>ro :call NewKittyWindow("ruby-specs")<CR>
nmap <Leader>rc :call CloseKittyWindow("ruby-specs")<CR>
nmap <Leader>rs :call SendToKitty("ruby-specs", "reset; bin/rspec " . bufname("%") . ":" . line(".") . "\\x0a")<CR>
nmap <Leader>rb :call SendToKitty("ruby-specs", "reset; bin/rspec " . bufname("%") . "\\x0a")<CR>
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
