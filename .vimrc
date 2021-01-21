set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" lightline panel
" Plugin 'itchyny/lightline.vim'
Plugin 'sonph-forks/lightline.vim' 
set laststatus=2
set noshowmode
let g:lightline = { 'colorscheme': 'onehalfdark' }

" onehalf colorscheme
Plugin 'sonph/onehalf'
syntax on
set t_Co=256
colorscheme onehalfdark

" git
Plugin 'airblade/vim-gitgutter'
set number

" autocomplete brackets
Plugin 'jiangmiao/auto-pairs'

" reduce tab size in .html
autocmd BufRead,BufNewFile *.htm,*.html setlocal tabstop=2 shiftwidth=2 softtabstop=2

" improve syntax highlighting
Plugin 'sheerun/vim-polyglot'

" frontend
Plugin 'mattn/emmet-vim'

" linter
Plugin 'w0rp/ale'
let b:ale_linters = ['flake8']
let g:ale_python_flake8_use_global = 1

call vundle#end()            " required
filetype plugin indent on    " required
