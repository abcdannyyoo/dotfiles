" =======================================================================================
" GENERAL
" =======================================================================================

" Fix slow cursor scrolling
set lazyredraw

" Color scheme

" True color support
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

" Snippet for Vim inside Tmux
set t_8b=^[[48;2;%lu;%lu;%lum
set t_8f=^[[38;2;%lu;%lu;%lum

syntax enable
colorscheme one
set background=dark
" highlight Normal guibg=#1d2026

" let g:seoul256_background = 233
" colorscheme seoul256

" Highlight current cursor row
" set cursorline!
" autocmd InsertEnter * highlight CursorLine guibg=#000050 guifg=fg
" autocmd InsertLeave * highlight CursorLine guibg=#004000 guifg=fg

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
