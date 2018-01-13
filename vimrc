call plug#begin('~/.vim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdcommenter'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'roxma/nvim-completion-manager'
Plug 'roxma/nvim-cm-tern', {'do': 'npm install'}
Plug 'prettier/vim-prettier', {'do': 'npm install'}
call plug#end()

filetype plugin on

set ignorecase
set background=dark
set number " line numbers
" set cursorline " highlight line // THIS IS AWFUL SLOW
set encoding=utf-8

map <C-p> :FZF<cr>
nmap <C-p> :FZF<cr>

nnoremap <M-h> <c-w>h
nnoremap <M-j> <c-w>j
nnoremap <M-k> <c-w>k
nnoremap <M-l> <c-w>l

if has('nvim')
	tnoremap <Esc> <C-\><C-n>
	tnoremap <C-v><Esc> <Esc>

	tnoremap <M-h> <c-\><c-n><c-w>h 
	tnoremap <M-j> <c-\><c-n><c-w>j 
	tnoremap <M-k> <c-\><c-n><c-w>k 
	tnoremap <M-l> <c-\><c-n><c-w>l 
endif

set tabstop=2
set shiftwidth=2
set softtabstop=2

set backspace=indent,eol,start

" set t_CO=256
colorscheme nord
syntax enable

" disable cursorline while in insert mode
" autocmd InsertLeave * setlocal cursorline
" autocmd InsertEnter * setlocal nocursorline

" let &t_SI = \"\<Esc>]50;CursorShape=1\x7"
" let &t_EI = \"\<Esc>]50;CursorShape=0\x7"
"
let g:jsx_ext_required=0

let g:ale_linters = {
\ 'javascript': ['eslint']
\}

let g:prettier#exec_cmd_async = 1

