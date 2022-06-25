syntax on
set number
set ai
set ruler
set tabstop=4 expandtab softtabstop=4 textwidth=79 shiftwidth=4
set hlsearch
set fileformat=unix
set cursorcolumn
set showmatch
set cursorline
set autoindent
set background=dark 
set nowrap
set relativenumber
hi CursorColumn ctermbg=016                                                                                                                                    
set showcmd
set scrolloff=8
 
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'gruvbox-community/gruvbox'
call plug#end()
 
autocmd vimenter * ++nested colorscheme gruvbox
 
let mapleader = " "
nnoremap <leader>pv : Vex<CR>
nnoremap <Leader><CR> :so ~/.vimrc<CR>
nnoremap<C-p> :GFiles<CR>
nnoremap<leader>pf :Files<CR>
