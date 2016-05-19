" =======================================================================================
" PLUGINS
" =======================================================================================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'jiangmiao/auto-pairs'
Plugin 'junegunn/seoul256.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rails'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'bling/vim-airline'
Plugin 'edkolev/tmuxline.vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'regedarek/ZoomWin'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'mxw/vim-jsx'

" All of your Plugins must be added before the following line
call vundle#end()

" =======================================================================================
" GENERAL
" =======================================================================================
filetype plugin indent on

" Color scheme
syntax enable
set background=dark
let g:seoul256_background = 233
colorscheme seoul256

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

" =======================================================================================
" React Settings
" =======================================================================================
" Allow JSX in normal JS files
let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers = ['jsxhint']
let g:syntastic_javascript_jsxhint_exec = 'jsx-jshint-wrapper'


" =======================================================================================
" KEY BINDINGS
" =======================================================================================
" Set <Leader> key
let mapleader= " "
map <C-n> :NERDTreeToggle<cr>
" Show hidden files such as dotfile
let NERDTreeShowHidden=1

" Vim window zoom
noremap <leader>z :ZoomWin<cr>

" Bufferline movement for now
noremap <leader>b :bprevious<cr>
noremap <leader>n :bnext<cr>

" Save and Quit
nnoremap <leader>s :update<cr>
nnoremap <leader>q :quit<cr>

" Refresh vimrc file
nnoremap <leader>r :source ~/.vimrc<cr>

inoremap <A-h> <A-o>h
inoremap <A-l> <A-o>a
inoremap <A-j> <A-o>j
inoremap <A-k> <A-o>k

" Allow movement in tmux / vim
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <Esc>h :TmuxNavigateLeft<cr>
nnoremap <silent> <Esc>j :TmuxNavigateDown<cr>
nnoremap <silent> <Esc>k :TmuxNavigateUp<cr>
nnoremap <silent> <Esc>l :TmuxNavigateRight<cr>
nnoremap <silent> <Esc>\ :TmuxNavigatePrevious<cr>

" NERDTree unicode based on the status of git
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" Airline Configuration
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
let g:airline_theme='wombat'
