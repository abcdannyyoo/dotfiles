" =======================================================================================
" GENERAL
" =======================================================================================

" Fix slow cursor scrolling
set lazyredraw

" Color scheme
syntax enable
set background=dark
let g:seoul256_background = 233
colorscheme seoul256

" Highlight current cursor row
set cursorline!
autocmd InsertEnter * highlight CursorLine guibg=#000050 guifg=fg
autocmd InsertLeave * highlight CursorLine guibg=#004000 guifg=fg

" Auto trailling whitespace
autocmd BufWritePre * :%s/\s\+$//e
" Set to auto read when a file is changed from the outside
set autoread
" Showing line number
set nu
" Put spaces rather than putting a tab
set et
" Show matched bracket
set showmatch
" Highlight search results
set hlsearch
" be iMproved, required
set nocompatible
" Use spaces instead of tabs
set expandtab
" Be smart when using tabs ;)
set smarttab
" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2
" Auto indent
set autoindent
" Smart indent
set smartindent
" Wrap lines
set nowrap
" Synchronise system clipboard with terminal
set clipboard=unnamed
" Tell vim where to put swap files
set dir=~/.vim/tmp/swap_files
