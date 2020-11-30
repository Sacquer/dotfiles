
call plug#begin('~/.cache/vim/plugged')

" CoC - Intellisens engine
Plug 'neoclide/coc.nvim', { 'branch': 'release'}

" Elm-Vim
Plug 'elmcast/elm-vim'

" VimWiki
Plug 'vimwiki/vimwiki'

" NERDTree
Plug 'scrooloose/nerdtree'

" vim-instant-markdown
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}

" vim-elixir
Plug 'elixir-lang/vim-elixir'

" undo-tree
Plug 'mbbill/undotree'

" GraphQL syntax highlighting
Plug 'jparise/vim-graphql'

" Postgresql
Plug 'vim-scripts/dbext.vim'

" Rails
Plug 'tpope/vim-rails'

" Github activities
Plug 'junegunn/vim-github-dashboard'

" Tabular aligning
Plug 'godlygeek/tabular'

" Easy align
Plug 'junegunn/vim-easy-align'

" Commentary
Plug 'tpope/vim-commentary'

" Git support
Plug 'tpope/vim-fugitive'

" vim-snippets
Plug 'honza/vim-snippets'

" vim-devicons
Plug 'ryanoasis/vim-devicons'

" Vim-Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Better control over terminal buffers
Plug 'mklabs/split-term.vim'

" JSON stuff
Plug 'elzr/vim-json'
Plug 'XadillaX/json-formatter.vim'

" Fuzzy Finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Ripgrep (rg)
Plug 'burntsushi/ripgrep'

" ack.vim
Plug 'mileszs/ack.vim'

" Language support
Plug 'kchmck/vim-coffee-script'   " coffee-script
Plug 'gkz/vim-ls'		              " livescript
Plug 'satyr/vim-coco'		          " coco
Plug 'tpope/vim-haml'             " haml
Plug 'posva/vim-vue'              " Vue
Plug 'dart-lang/dart-vim-plugin'  " Dart

" Colorschemes
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'

" Highlight tags
Plug 'vim-scripts/TagHighlight'

" Float-term
" Plug 'voldikss/vim-floaterm'

" Built in terminal
" Plug 'kassio/neoterm'

" File manager instead of nerdtree
" Plug 'vifm/neovim-vifm'

" which-key
" Plug 'liuchengxu/vim-which-key'

call plug#end()
