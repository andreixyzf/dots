"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|

"" Basic settings
        set number relativenumber
        syntax on
        set scl=yes
	set title
        set nowrap
        set clipboard=unnamedplus
        set scrolloff=8
        let g:highlightedyank_highlight_duration = 100 " Highlight on yank
        set guicursor=
        set guifont=iosevka
        set noswapfile
        set list
        set listchars+=space:␣
        set listchars=tab:>·,trail:~,extends:>,precedes:<,space:⋅
        set splitbelow splitright
        set mouse=a

"" Luke Smith:
" Automatically deletes all trailing whitespace and newlines at end of file on save. & reset cursor position
        autocmd BufWritePre * let currPos = getpos(".")
        autocmd BufWritePre * %s/\s\+$//e
        autocmd BufWritePre * %s/\n\+\%$//e
        autocmd BufWritePre *.[ch] %s/\%$/\r/e " add trailing newline for ANSI C standard
        autocmd BufWritePre *neomutt* %s/^--$/-- /e " dash-dash-space signature delimiter in emails
        autocmd BufWritePre * cal cursor(currPos[1], currPos[2])

" Shortcutting split navigation, saving a keypress:
        map <C-h> <C-w>h
        map <C-j> <C-w>j
        map <C-k> <C-w>k
        map <C-l> <C-w>l

" Spell-check set to <leader>o, 'o' for 'orthography':
        map <leader>o :setlocal spell! spelllang=en_us<CR>

"" Colors
        set background=dark
        colorscheme retrobox
        set cursorline
        highlight clear SignColumn
        highlight CursorLineNr ctermfg=172 ctermbg=NONE guifg=#d79921 guibg=NONE
        hi Normal guibg=NONE ctermbg=NONE " Transparent background
        highlight ColorColumn ctermbg=darkgrey guibg=darkgrey
        "set colorcolumn=80

"" Indentation & Styling
        set autoindent
        set smartindent
        set tabstop=2
        set softtabstop=2
        set shiftwidth=2
        set expandtab
        filetype plugin indent on

"" Remaps
        let mapleader = " " " map leader to Space
        map <leader>pv :Ex<CR>

"" Statusbar
        set laststatus=2

"" Netrw
        let g:netrw_banner=0 " Disable the netrw banner

"" Autocomplete
        filetype plugin on
        set omnifunc=syntaxcomplete#Complete
        let g:acp_enableAtStartup=1

"" Plugins
        packadd editorconfig
