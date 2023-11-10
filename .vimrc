 1 set nocompatible              " be iMproved, required
  2 filetype off                  " required
  3
  4 " set the runtime path to include Vundle and initialize
  5 set rtp+=~/.vim/bundle/Vundle.vim
  6 call vundle#begin()
  7 " alternatively, pass a path where Vundle should install plugins
  8 "call vundle#begin('~/some/path/here')
  9
 10 " let Vundle manage Vundle, required
 11 Plugin 'VundleVim/Vundle.vim'
 12 Plugin 'dense-analysis/ale'
 13 Plugin 'nvie/vim-flake8'
 14 " All of your Plugins must be added before the following line
 15 call vundle#end()            " required
 16 filetype plugin indent on    " required
 17 " To ignore plugin indent changes, instead use:
 18 "filetype plugin on
 19 "
 20 " Brief help
 21 " :PluginList       - lists configured plugins
 22 " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
 23 " :PluginSearch foo - searches for foo; append `!` to refresh local cache
 24 " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
 25 "
 26 " see :h vundle for more details or wiki for FAQ
 27 " Put your non-Plugin stuff after this line
 28 "
 29 syntax on
 30
 31 set t_Co=256
 32 colorscheme atom-dark-256
 33 set foldmethod=indent
 34
 35 set foldlevel=99
 36
 37 nnoremap <space> za
 38
 39 au BufNewFile, BufRead *.py
 40         \ set tabstop=4
 41         \ set softtabstop=4
 42         \ set shiftwidth=4
 43         \ set textwidth=79
 44         \ set expandtab
 45         \ set autoindent
 46         \ set fileformat=unix
 47
 48 let g:ale_linters = {'python': ['flake8']}
 49
 50 set number
