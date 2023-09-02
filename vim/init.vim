 " Basics:
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

 " Split screen at the bottom and right.
   set splitbelow splitright

 " Autocompile software:
    autocmd BufWritePost *.config.h,*.config.def.h !sudo make clean install
