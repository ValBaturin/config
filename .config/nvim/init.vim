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
set nowrap
set number

set colorcolumn=120
highlight ColorColumn ctermbg=darkred
syntax enable

"Show hidden files in NERDTree
let NERDTreeShowHidden=1

"terminal
" tnoremap <Esc> <C-\><C-n>

"debug
let g:vebugger_leader='<Leader>d'

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
nnoremap <leader>b :Buffer<CR>
nnoremap <leader>f :FZF<CR>
nnoremap <leader>r :Rg<CR>

"projectionist
nnoremap <leader>p :A<CR>
" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif

"Use ; in addition to : to type commands. https://github.com/alexryndin/dotfiles
noremap ; :
"noremap : ; ?

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
Plug '/usr/local/opt/fzf'
Plug 'kien/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox',

Plug 'tpope/vim-fugitive',
Plug 'tpope/vim-projectionist',
Plug 'tpope/vim-dispatch'

Plug 'junegunn/goyo.vim',
Plug 'junegunn/fzf.vim',
Plug 'tomlion/vim-solidity'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'idanarye/vim-vebugger'


call plug#end()

let g:gruvbox_contrast_light='hard'
colorscheme gruvbox
set background=light


let maplocalleader = ","
nmap <localleader>r <Plug>(coc-references)
nmap <localleader>d <Plug>(coc-definition)
nmap <localleader>i <Plug>(coc-implementation)
nmap <localleader>t <Plug>(coc-type-definition)
nmap <localleader>c <Plug>(coc-rename)
nmap <localleader>x <Plug>(coc-fix-current)
nmap <localleader>w <Plug>(coc-diagnostic-info)
nmap <localleader>fs <Plug>(coc-format-selected)
nmap <localleader>f <Plug>(coc-format)


autocmd FileType c,cc,cpp,cxx,h,hpp nnoremap <leader>md :Dispatch -compiler=make make -j -C Debug/ <CR>

" ctags
set tags=./tags;/$HOME


highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
