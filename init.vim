syntax on
set mouse=a
set number
set bg=dark
set ai
set ruler
set tabstop=4 expandtab softtabstop=4 textwidth=79 shiftwidth=4
set hlsearch
set nocompatible
filetype plugin on
set fileformat=unix
set cursorcolumn
set showmatch
set cursorline
set noerrorbells
set autoindent
set background=dark 
set nowrap
set relativenumber
hi CursorColumn ctermbg=016                                                                                                                                        
set showcmd
set scrolloff=8
set clipboard=unnamedplus 
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 
Plug 'junegunn/fzf.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'gruvbox-community/gruvbox'
"Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim',{'branch':'release'}                                                                                                                                
Plug 'vimwiki/vimwiki'
let g:vimwiki_list = [{'path': '~/Dropbox/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
"set spell
"neovim lsp 

call plug#end()


autocmd vimenter * ++nested colorscheme gruvbox
 
let mapleader = " " 
nnoremap <leader>pv : Vex<CR>
nnoremap <leader><CR> :so ~/.vimrc<CR>
nnoremap<C-p> :GFiles<CR>
nnoremap<leader>pf :Files<CR>
vnoremap<leader>y "+y
nnoremap<leader>y "+y
nnoremap<leader>p "+p
vnoremap<leader>p "+p
