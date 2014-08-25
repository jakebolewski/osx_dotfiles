set guifont=Inconsolata\ for\ Powerline:h12
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set nocompatible	
set laststatus=2	
set vb 

filetype off		
filetype plugin indent on 

syntax on
colorscheme Tomorrow-Night 

""""""""""""""""""""""""""""""""
" GUI Options 
""""""""""""""""""""""""""""""""
if has("gui_running")
    " Remove menu bar
    set guioptions-=m
    " Remove toolbar
    set guioptions-=T
    " Remove scrollbar
    set guioptions-=l
    set guioptions-=L
    set guioptions-=r
    set guioptions-=b
    " Set Font
    set guifont=Inconsolata\ for\ Powerline:h12
endif

""""""""""""""""""""""""""""""""
" Vundle Plugin Setup....
""""""""""""""""""""""""""""""""
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

""""""""""""""""""""""""""""""""
" Bundles 
""""""""""""""""""""""""""""""""
Plugin 'tpope/vim-fugitive.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/syntastic.git'
Plugin 'kien/ctrlp.vim.git'
Plugin 'majutsushi/tagbar.git'
Plugin 'ervandew/supertab.git'
Plugin 'petRUShka/vim-opencl.git'
Plugin 'JuliaLang/julia-vim'

Plugin 'L9'
Plugin 'FuzzyFinder'

Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

autocmd FileType julia set tabstop=4|set softtabstop=4|set shiftwidth=4|set expandtab

set number
set numberwidth=1

map <leader>n :NERDTreeToggle<CR> 

set wildmenu
set wildmode=longest:full,full

set noswapfile
