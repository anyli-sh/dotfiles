" ----------------------------------------------------------------------------
"  Plugins 
"  -----------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')
" Tools 
    " Distraction free writing by removing UI elements 
    Plug 'junegunn/goyo.vim'
    "  Auto completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'meain/vim-package-info', { 'do': 'npm install' }
    " Plug 'scrooloose/nerdtree'
    " Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'ryanoasis/vim-devicons'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    " Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'vifm/vifm.vim'
    Plug 'tpope/vim-commentary' " Toggle comments in various ways.
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'morhetz/gruvbox'
    Plug 'tpope/vim-fugitive'
    Plug 'vim-airline/vim-airline'
" Languages and file types.
    Plug 'chr4/nginx.vim'
    Plug 'chrisbra/csv.vim'
    Plug 'ekalinin/dockerfile.vim'
    Plug 'elixir-editors/vim-elixir'
    Plug 'godlygeek/tabular' | Plug 'tpope/vim-markdown'
    Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app & yarn install' }
    Plug 'lifepillar/pgsql.vim'
    Plug 'othree/html5.vim'
    Plug 'pangloss/vim-javascript'
    Plug 'PotatoesMaster/i3-vim-syntax'
    Plug 'stephpy/vim-yaml'
    Plug 'tmux-plugins/vim-tmux'
    Plug 'tpope/vim-liquid'
    Plug 'tpope/vim-rails'
" Syntax
    Plug 'tpope/vim-markdown'
    Plug 'wgwoods/vim-systemd-syntax'
    Plug 'cakebaker/scss-syntax.vim'
    Plug 'vim-python/python-syntax'
call plug#end()

 " -----------------------------------------------------------------------------
 " Basic Settings
 "-----------------------------------------------------------------------------
 "Color Settings
  colorscheme gruvbox

	syntax on
	set autoindent
	set tabstop=4
	set shiftwidth=4
	set dir=/tmp/
	set relativenumber 
	set number
" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ ]

" Status-line
set statusline=
set statusline+=%#PmenuSel#
set statusline+=\ %M "show whether file is modified or not
set statusline+=\ %y
set statusline+=\ %r "indicate read only (RO) file
set statusline+=\ %F "print out full path of open file
set statusline+=%= "Right side settings"
set statusline+=%#DiffChange#
set statusline+=\ %c:%l/%L "current column:current line/Whole lines 
set statusline+=\ %p%% "show percentage of file we're on
set statusline+=\ [%n] "show buffer number

set autoindent
set smartindent
set autoread
set backspace=indent,eol,start
set backupdir=/tmp//,.
" set clipboard=unnamedplus
set clipboard=unnamed
set colorcolumn=80

set complete+=kspell
set completeopt=menuone,longest
set cursorline
set directory=/tmp//,.
set encoding=utf-8
set expandtab smarttab
set formatoptions=tcqrn1
" set hidden
let NERDTreeShowHidden=1
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set matchpairs+=<:> " Use % to jump between pairs
set mmp=5000
set modelines=2
set mouse=a
set nocompatible
set noerrorbells visualbell t_vb=
set noshiftround
set nospell
set nostartofline
set number relativenumber
set regexpengine=1
set ruler
set scrolloff=3
set shiftwidth=2
set showcmd
set showmatch
set shortmess+=c
set showmode
set smartcase
set softtabstop=2
set spelllang=en_us
set splitbelow
set splitright
set tabstop=2
set textwidth=0
set ttimeout
set ttyfast
set undodir=/tmp
set undofile
set virtualedit=block
set whichwrap=b,s,,><
set wildmenu
set wildmode=full
set wrap
set rtp+=/usr/local/opt/fzf
set relativenumber
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
  " always uses spaces instead of tab characters
    " from readme
    " if hidden is not set, TextEdit might fail.
    set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
    set updatetime=300
    " don't give |ins-completion-menu| messages.
    set shortmess+=c
    " Add status line support, for integration with other plugin, checkout `:h coc-status`
    set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
    " always show signcolumns
    set signcolumn=yes
    set expandtab
    runtime! macros/matchit.vim
    
	set hlsearch
	autocmd Filetype html setlocal sw=2 expandtab
	autocmd Filetype javascript setlocal sw=4 expandtab


" Config vim package info 
let g:vim_package_info_virutaltext_prefix = '  ¤ '
let g:vim_package_info_virutaltext_highlight = 'NonText'
" ----------------------------------------------------------------------------
" Key Remapping 
" ---------------------------------------------------------------------------
let mapleader=","
map <C-s> :source ~/.config/nvim/init.vim<CR>
map <C-n> :EditVifm .<CR>
map <ENTER> :Goyo<CR>

nnoremap <Up> :resize +2<CR>
nnoremap <Down> :resize -2<CR>
nnoremap <Left> :vertical resize +2<CR>
nnoremap <Right> :vertical resize +2<CR>

nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
"Move lines up/down 
xnoremap J :move '>+1<CR>gv-gv
xnoremap K :move `<-2<CR>gv-gv

"FZF 
nnoremap <C-p> :Files<CR>

" File and Window Management 
" inoremap <leader>w <Esc>:w<CR>
" noremap <leader>w :w<CR>

" inoremap <leader>q <ESC>:q<CR>
" nnoremap <leader>q :q<CR>

" inoremap <leader>x <ESC>:x<CR>
" nnoremap <leader>x :x<CR>

" nnoremap <leader>e :Ex<CR>
" nnoremap <leader>t :tabnew<CR>:Ex<CR>
" nnoremap <leader>v :vsplit<CR>:w<CR>:Ex<CR>
" nnoremap <leader>s :split<CR>:w<CR>:Ex<CR>

" nnoremap <C-l> :nohl<CR><C-l>:echo "Search Cleared"<CR>
" nnoremap <C-c> :set norelativenumber<CR>:set nonumber<CR>:echo "Line numbers turned off."<CR>
  " nnoremap <C-n> :set relativenumber<CR>:set number<CR>:echo "Line numbers turned on."<CR>
    " Disable arrow keys when using vim
    " :nnoremap <up> <nop>
    " :nnoremap <down> <nop>
    " :inoremap <up> <nop>
    " :inoremap <down> <nop>
    " :inoremap <left> <nop>
    " :inoremap <right> <nop>
	" nnoremap n nzzzv
	" nnoremap N Nzzzv

	" map <tab> %
	" set backspace=indent,eol,start
	" set listchars=tab:\|\ 
	" nnoremap <leader><tab> :set list!<cr>
	" set pastetoggle=<F2>
	set mouse=a
	set incsearch

    hi SpellBad cterm=underline ctermfg=9
    hi SpellLocal cterm=underline ctermfg=9
    hi SpellRare cterm=underline ctermfg=9
    hi SpellCap cterm=underline

" -------------------------------------------------------------------------------
" Powerline 
" --------------------------------------------------------------------------------
" set rtp+=/Users/anyli/Library/Python/3.7/lib/python/site-packages/powerline/bindings/vim/
" set laststatus=2 " Always show statuslin
" " Use 256 colours (Use this setting only if your terminal supports 256 colours)
" set t_Co=256


"-----------------------------------------------------------------------------
"NERDTree config 
"-----------------------------------------------------------------------------
let g:NERDTreeGitStatusWithFlags = 1
"let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"let g:NERDTreeGitStatusNodeColorization = 1
"let g:NERDTreeColorMapCustom = {
    "\ "Staged"    : "#0ee375",
    "\ "Modified"  : "#d9bf91",
    "\ "Renamed"   : "#51C9FC",
    "\ "Untracked" : "#FCE77C",
    "\ "Unmerged"  : "#FC51E6",
    "\ "Dirty"     : "#FFBD61",
    "\ "Clean"     : "#87939A",
    "\ "Ignored"   : "#808080"
    "\ }
" let g:NERDTreeIgnore = ['^node_modules$']
let g:ackprg = 'ag --nogroup --nocolor --column'

" vim-prettier
"let g:prettier#quickfix_enabled = 0
"let g:prettier#quickfix_auto_focus = 0
" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" run prettier on save
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" NERDTree configs 
let g:NERDTreeChDirMode=2

" sync open file with NERDTree
" " Check if NERDTree is open or active
function! IsNERDTreeOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

"-----------------------------------------------------------------------------
"Fuzzy File Finder
"-----------------------------------------------------------------------------
" ctrlp
" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end


" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)


" ---------------------------------------------------------------------------------------
" Language Specific
" ---------------------------------------------------------------------------------------
" Markup
	inoremap <leader>< <esc>I<<esc>A><esc>yypa/<esc>O<tab>
    
"Goyo settings
function! s:goyo_enter()
    set noshowmode
    set noshowcmd
    set nocursorline
    CocDisable
    Limelight
endfunction

function! s:goyo_leave()
    set showmode
    set showcmd
    set cursorline
    CocEnable
    Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave() 
"Goyo settings
function! s:goyo_enter()
    set noshowmode
    set noshowcmd
    set nocursorline
    CocDisable
    Limelight
endfunction

function! s:goyo_leave()
    set showmode
    set showcmd
    set cursorline
    CocEnable
    Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave() 




" ---------------------------------------------------------------------------------------
" Return to the same line you left off at
" ---------------------------------------------------------------------------------------
	augroup line_return
		au!
		au BufReadPost *
			\ if line("'\"") > 0 && line("'\"") <= line("$") |
			\	execute 'normal! g`"zvzz' |
			\ endif
	augroup END

" Auto load
	" Triger `autoread` when files changes on disk
	" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
	" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
	autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
	set autoread 
	" Notification after file change
	" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
	autocmd FileChangedShellPost *
	  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

" Future stuff
	"Swap line
	"Insert blank below and above

" Fix for: https://github.com/fatih/vim-go/issues/1509

filetype plugin indent on
