" =======================================================================================
" KEY BINDINGS
" =======================================================================================

nnoremap <silent> <Leader>o :Files<CR>
nnoremap <silent> <Leader>a :Ag<CR>
nnoremap <silent> <Leader><Enter> :Buffers<CR>

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
nnoremap <leader>r :source $HOME/.config/nvim/init.vim<cr>

inoremap <A-h> <A-o>h
inoremap <A-l> <A-o>a
inoremap <A-j> <A-o>j
inoremap <A-k> <A-o>k

" Allow movement in tmux / vim
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <Leader>h :TmuxNavigateLeft<cr>
nnoremap <silent> <Leader>j :TmuxNavigateDown<cr>
nnoremap <silent> <Leader>k :TmuxNavigateUp<cr>
nnoremap <silent> <Leader>l :TmuxNavigateRight<cr>
nnoremap <silent> <Leader>\ :TmuxNavigatePrevious<cr>

" Resize windows
nnoremap <silent> <Leader>= :exe "resize +3"<CR>
nnoremap <silent> <Leader>- :exe "resize -3"<CR>
nnoremap <silent> <Leader>] :exe "vertical resize +8"<CR>
nnoremap <silent> <Leader>[ :exe "vertical resize -8"<CR>

nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>_ :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader>} :exe "vertical resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>{ :exe "vertical resize " . (winheight(0) * 2/3)<CR>
