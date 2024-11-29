" =======================================================================================
" VIM-PLUG
" =======================================================================================
call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'junegunn/seoul256.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-ragtag'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'bling/vim-airline'
Plug 'edkolev/tmuxline.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'mustache/vim-mustache-handlebars'
Plug 'regedarek/ZoomWin'
Plug 'christoomey/vim-tmux-navigator'
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-unimpaired'
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

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

" =======================================================================================
" REACT SETTINGS
" =======================================================================================
" Allow JSX in normal JS files
let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers = ['jsxhint']
let g:syntastic_javascript_jsxhint_exec = 'jsx-jshint-wrapper'

" =======================================================================================
" FZF
" =======================================================================================
let g:fzf_action = {
\  'ctrl-t': 'tab split',
\  'ctrl-s': 'split',
\  'ctrl-v': 'vsplit'
\ }
let g:fzf_history_dir = '~/.fzf-history'

nnoremap <silent> <Leader>o :Files<CR>
nnoremap <silent> <Leader>a :Ag<CR>
nnoremap <silent> <Leader><Enter> :Buffers<CR>

" =======================================================================================
" KEY BINDINGS
" =======================================================================================
" Set <Leader> key
let mapleader= " "

" Open NERDTree
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

" resize windows
nnoremap <silent> <Leader>= :exe "resize +3"<CR>
nnoremap <silent> <Leader>- :exe "resize -3"<CR>
nnoremap <silent> <Leader>] :exe "vertical resize +8"<CR>
nnoremap <silent> <Leader>[ :exe "vertical resize -8"<CR>

nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>_ :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader>} :exe "vertical resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>{ :exe "vertical resize " . (winheight(0) * 2/3)<CR>

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

" Closetag
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*hbs,*.html.erb"
