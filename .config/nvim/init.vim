let mapleader = "\<Space>"

filetype plugin indent on

set nocompatible
set relativenumber
set showmode
set smarttab
set smartindent
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4
set laststatus=1

colo delek
set colorcolumn=80
highlight ColorColumn ctermbg=darkred
syntax enable

"Show hidden files in NERDTree
let NERDTreeShowHidden=1

"vim config
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>sv :so $MYVIMRC<CR>

"Tabs
nnoremap <leader>tn :tabnext<CR>
nnoremap <leader>tp :tabprevious<CR>
nnoremap <leader>tc :tabclose<CR>

"Ctags
nnoremap <leader>c :CtrlPTag<CR>

"fzf
nnoremap <leader>f :FZF<CR>

"Use ; in addition to : to type commands. https://github.com/alexryndin/dotfiles
noremap ; :
"noremap : ; ?

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
Plug '/usr/local/opt/fzf'
Plug 'fatih/vim-go'
Plug 'kien/ctrlp.vim'

call plug#end()

augroup autoformat_settings
  autocmd FileType c,cpp AutoFormatBuffer clang-format
  " Alternative: autocmd FileType python AutoFormatBuffer autopep8
augroup END

augroup project
  autocmd!
  autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END
