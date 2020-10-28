let g:mapleader = "\<Space>"            " set leader key
set formatoptions-=cro                  " Stop newline continution of comments

syntax on                           " Enables syntax highlighting
set t_Co=256                            " Support 256 colors
set tabstop=2                           " Insert 2 spaces for a tab
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set expandtab                           " Converts tabs spaces
set smarttab                            " Makes tabbing smarter
set background=dark                     " Tell vim what the background color looks like
set clipboard=unnamedplus               " Use the system clipboard
" set mouse=n                             " Mouse to resize splits (see :help mouse)
set showcmd                             " Show leader key appear and dissapear (1000ms)
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set relativenumber                      " Show relativer numbers
set belloff=all                         " Disable visual/audio -bell
set encoding=utf-8                      " The conding displayed
set fileencoding=utf-8                  " The encoding written to file
set ignorecase                          " Ignore case in search (case insensitive pattern matching)
set smartcase                           " Overrides ignorecase if pattern contains upcase
set nocompatible                        " Don't need to be compatible with old vim
set showmatch                           " Show bracket matches
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set incsearch                           " Highlight while searching
set hlsearch                            " Highlight all matches after entering search pattern
set noerrorbells                        " Disable sound effects
set scrolloff=4                         " Keep at least 4 lines below cursor

set noswapfile                          " No swapsfiles, we're using undotree
set nobackup                            " No backup, we're using undotree
set undodir=~/.config/nvim/undodir      " Undotree directory (this directory needs to be created)
set undofile                            " Create per file undo-file

" set viminfo='1000,n~/.cache/viminfo

"set updatetime=300                      " Faster completion
"set timeoutlen=100                      " By default timeoutlen is 1000 ms
"set nowrap                              " Display long lines as just one line

" set statusline=%F%m%r%h%w\ %{fugitive#statusline()}\ [%l,%c]\ [%L,%p%%]   " put git status, column/row number, total lines, and percentage in status
