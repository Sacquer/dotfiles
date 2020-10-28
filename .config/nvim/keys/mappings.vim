" Better window navigation; Ctrl + j = Ctrl + w + j
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Better nav for omnicomplete
inoremap <expr> <C-j> ("\<C-n>")
inoremap <expr> <C-k> ("\<C-p>")

" Use alt + h,j,k,l to resize windows
nnoremap <M-j>   :resize -2<CR>
nnoremap <M-k>   :resize +2<CR>
nnoremap <M-h>   :vertical resize -2<CR>
nnoremap <M-l>   :vertical resize +2<CR>

" jk = ESC - in insert mode
inoremap jk <ESC>

" Clears search highlight
map <silent> <leader>h :noh<CR>

" nvim terminal buffers
nmap <leader>te :terminal<CR>

" fzf - search files in directory
nmap <C-p> :FZF<CR>

" show / search files in directory
nnoremap <leader>pf :Files<CR>

" rip-grep search
nnoremap <leader>ps :Rg<SPACE>

" rip-grep search with floating window
nnoremap <leader>pw :Rg <C-R>=expand("<cword>")<CR><CR>

" show undotree
nnoremap <leader>u :UndotreeShow<CR>

" toggle nerdtree
nmap <C-e> :NERDTreeToggle<CR>

" Show markdown preview with vim-instant-markdown plugin (leader + md)
map <leader>md :InstantMarkdownPreview<CR>

" Open new tab (leader + tt)
map <leader>tt :tabnew<CR>

" vim-fugitive (git)
nmap <leader>gs :G<CR>

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" nmap <C-e> :VifmToggle ./<CR>



