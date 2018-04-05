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

" =======================================================================================
" NETDTREE
" =======================================================================================

let NERDTreeIgnore = ['.DS_Store']

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

" =======================================================================================
" AIRLINE
" =======================================================================================

" set laststatus=2
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline_powerline_fonts = 1
" let g:airline_theme='wombat'

" =======================================================================================
" CLOSETAG
" =======================================================================================

let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*hbs,*.html.erb"
