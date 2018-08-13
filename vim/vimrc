Don't try to be vi compatible
set nocompatible

" close screen flash
set vb t_vb=

set noswapfile
set mouse=a
set viminfo='100,\"2500,:200,%,n~/.viminfo

" Pathogen load
" Helps force plugins to load correctly when it is turned back on below
filetype off

call pathogen#infect()
call pathogen#helptags()

let python_highlight_all=1

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" TODO: Pick a leader key
let mapleader = ","

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=80
set formatoptions=tcqrn1
set tabstop=8
set smartindent
set shiftwidth=8
set softtabstop=8
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2
set statusline=%F\ \ %r\ %{&fileformat}\ \ \ %l,%v\ %p%%\ \ \ [\ %L\ lines\
]

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Color scheme (terminal)
set t_Co=256
set backgro
