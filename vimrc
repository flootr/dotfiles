call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'prettier/vim-prettier', {'do': 'npm install'}
" Plug 'tpope/vim-fugitive'
Plug 'dracula/vim'
Plug 'bling/vim-bufferline'
call plug#end()

" Display settings
set encoding=utf-8 nobomb
syntax on
syntax enable
color dracula
set termguicolors

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
set background=dark

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

nnoremap <M-h> <c-w>h
nnoremap <M-j> <c-w>j
nnoremap <M-k> <c-w>k
nnoremap <M-l> <c-w>l

let g:jsx_ext_required=0

" Prettier Plugin
let g:prettier#config#print_width = 120
let g:prettier#config#use_tabs = 'true'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#jsx_bracket_same_line = 'false'
let g:prettier#exec_cmd_async = 1

" map key to command
map <Leader>f :Find<space>

" Find in files
command! -bang -nargs=* Find call fzf#vim#grep( 'rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --color "always" '.shellescape(<q-args>), 1, <bang>0)

" Git Gutter Plugin
set signcolumn=yes

" Ale Plugin
let g:ale_lint_on_text_changed = 'never'                   " Only lint when text is saved.
let g:ale_fix_on_save = 1
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_javascript_prettier_use_local_config = 1

