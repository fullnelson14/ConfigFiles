"Custom vim settings for fullNelson14

set nocompatible
let mapleader = "\<SPACE>"
syntax on

set ttyfast

set showmode
set showcmd

set matchpairs+=<:>
set number

set hidden

set tabstop=4
set shiftwidth=4
set expandtab
set number relativenumber
set autoindent

call plug#begin("~/.vim/plugged")

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree'
Plug 'ap/vim-buftabline'
Plug 'morhetz/gruvbox'
Plug 'cakebaker/scss-syntax.vim'
Plug 'digitaltoad/vim-pug'
Plug 'prettier/vim-prettier'
call plug#end()

nnoremap <leader>k :bnext<cr>
nnoremap <leader>j :bprevious<cr>
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>x :bdelete<cr>
nnoremap <leader>s :w<cr>:bd<cr>




inoremap [ []<left>
inoremap { {}<left>
inoremap {<cr> {<cr>}<ESC>O
inoremap {;<cr> {<cr>};<ESC>O

vmap <C-c> y:new ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| clip.exe <CR><CR>
