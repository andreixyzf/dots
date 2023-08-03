"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|

 " Set up basics.
    set bg=light
    syntax on
    set encoding=utf-8
    set clipboard=unnamedplus
    set number relativenumber

 " Enable autocompletion.
    set wildmode=longest,list,full

 " Delete all trailing whitespace on save.
   autocmd BufWritePre * %s/\s\+$//e

 " Copy and paste selected text to clipboard.
    vnoremap <C-c> "+y
	map <S-Insert> <C-i> " Paste from system clipboard.
    map <C-p> "+P

 " Run xrdb when changing Xresources or Xdefaults
    autocmd BufWritePost *Xresources,*Xdefaults !xrdb %

 " Recompile suckless software automatically.
    autocmd BufWritePost config.h,config.def.h !sudo make install

 " Split screen at the bottom and right.
    set splitbelow splitright

 " Source zshrc file when modified and written:
    autocmd BufWritePost *.zshrc,*.aliasrc !source ~/.config/zsh/.zshrc

 " Autocompile suckless software:
    autocmd BufWritePost *.config.h,*.config.def.h !sudo make clean install

 " Auto compile groff documents in pdfs:
    autocmd BufWritePost *Document.ms !groff -ms Document.ms -T pdf > Document.pdf
