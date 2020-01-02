call plug#begin('~/.vim/plugged')
" Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-vinegar'
Plug 'chriskempson/base16-vim'
" Plug 'tpope/vim-unimpaired'
" Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-commentary'
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'prettier/vim-prettier', {'do': 'npm install'}
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
" Plug 'lifepillar/vim-solarized8'
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
" Plug 'chriskempson/tomorrow-theme', { 'rtp': 'vim' }
Plug 'hzchirs/vim-material'
Plug 'evanleck/vim-svelte'
call plug#end()

set encoding=utf-8 nobomb

"display settings
if (has("nvim"))
	let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
	set termguicolors
endif

syntax on
syntax enable
" set t_Co=256
set background=dark
let g:material_style='oceanic'
colorscheme vim-material
let g:lightline = {
  \ 'colorscheme': 'material',
  \ }

" General config
set number
set nocompatible
set ignorecase
set backspace=indent,eol,start
set history=1000
set laststatus=2
set clipboard=unnamed
set splitright
set splitbelow
" set lazyredraw
set undofile

if has('nvim')
	set inccommand=nosplit
endif

" Mouse
set ttyfast
set mouse=a

" Search Settings
set incsearch
set hlsearch
set viminfo='100,f1

" Intendation and Display
filetype plugin on
filetype indent on
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set tabstop=2
set softtabstop=2

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Start scrolling three lines before the horizontal window border
set scrolloff=1

map <C-p> :FZF<cr>
nmap <C-p> :FZF<cr>

map <C-K> :bprev<CR>
map <C-J> :bnext<CR>

nnoremap <M-h> <c-w>h
nnoremap <M-j> <c-w>j
nnoremap <M-k> <c-w>k
nnoremap <M-l> <c-w>l

let g:jsx_ext_required=0

" Prettier Plugin
" let g:prettier#config#print_width = 120
" let g:prettier#config#use_tabs = 'true'
" let g:prettier#config#bracket_spacing = 'true'
" let g:prettier#config#jsx_bracket_same_line = 'false'
let g:prettier#autoformat = 0
let g:prettier#exec_cmd_async = 1

" map key to command
map <Leader>f :Find<space>

" Find in files
command! -bang -nargs=* Find call fzf#vim#grep( 'rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --color "always" '.shellescape(<q-args>), 1, <bang>0)

" Ale Plugin
let g:ale_lint_on_text_changed = 'never'                   " Only lint when text is saved.
let g:ale_fixers = {}
let g:ale_linters = { 'javascript': ['eslint'] }


" Enter cleans the search highlight
:nnoremap <CR> :nohlsearch<cr>
