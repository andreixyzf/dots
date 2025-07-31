
set number relativenumber
set clipboard=unnamedplus
set noswapfile
set signcolumn=auto
set title
set nowrap
set scl=yes
set nocompatible
set incsearch

" Find files
set path+=**
set wildmenu

" Window Splitting:
set splitbelow splitright

" Mouse
set mouse=a

"" Indentation & Styling
set autoindent
set smartindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Show invisible chars
set list
set listchars=tab:>·,trail:~,extends:>,precedes:<,space:⋅

"" Statusbar
set laststatus=2
set statusline=%f\ %y\ %l/%L

" ColorColumn
set colorcolumn=81

" Colors
set bg=dark

filetype plugin indent on
syntax enable
set termguicolors

"Netrw
let g:netrw_banner=0

"" Make
set makeprg=make
