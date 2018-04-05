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
" LIGHTLINE
" =======================================================================================

set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" =======================================================================================
" CLOSETAG
" =======================================================================================

let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*hbs,*.html.erb"
