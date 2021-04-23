" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " File Explorer
    Plug 'scrooloose/NERDTree'
    Plug 'Xuyuanp/nerdtree-git-plugin'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Themes
    Plug 'morhetz/gruvbox'
    Plug 'bling/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'edkolev/tmuxline.vim'

    " Allow to zoom in and out from splitted Vim window
    Plug 'regedarek/ZoomWin'

    " Enable comment shortcut
    Plug 'tpope/vim-commentary'

    " Auto closes html tags
    Plug 'alvan/vim-closetag'

    " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Display key bindings in popup
    Plug 'liuchengxu/vim-which-key'

    " Tmux
    Plug 'christoomey/vim-tmux-navigator'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall | q
  \| endif
