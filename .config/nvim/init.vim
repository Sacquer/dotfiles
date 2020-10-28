let $NVIM_TUI_ENABLE_TRUE_COLOR=1

let g:python3_host_prog='/usr/bin/python3'

let g:vim_json_syntax_conceal = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" general settings
source $HOME/.config/nvim/general/settings.vim

" key mappings
source $HOME/.config/nvim/keys/mappings.vim

" Plug - plugins
source $HOME/.config/nvim/vim-plug/plugins.vim

" coc-vim
source $HOME/.config/nvim/plug-config/coc.vim

" NERDTree
source $HOME/.config/nvim/plug-config/nerd-tree.vim

" FZF
source $HOME/.config/nvim/plug-config/fzf.vim

" ripgrep
source $HOME/.config/nvim/plug-config/ripgrep.vim

" Undotree
source $HOME/.config/nvim/plug-config/undotree.vim

" vim-airline
source $HOME/.config/nvim/themes/airline.vim

" gruvbox theme
" source $HOME/.config/nvim/themes/gruvbox.vim

" gruvbox-material theme
source $HOME/.config/nvim/themes/gruvbox_material.vim

" ack-vim
source $HOME/.config/nvim/plug-config/ack.vim

" vim-wiki
source $HOME/.config/nvim/plug-config/vim-wiki.vim

" emmet
source $HOME/.config/nvim/plug-config/emmet.vim

" vim-instant-markdown
source $HOME/.config/nvim/plug-config/vim-instant-markdown.vim

colorscheme gruvbox-material

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" highlight trailing spaces in annoying red
highlight ExtraWhitespace ctermbg=1 guibg=red

" trim whitespaces
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

autocmd BufWritePre * :call TrimWhitespace()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" bind q to close the buffer for help files
autocmd Filetype help nnmoremap <buffer> q :q<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RENAME CURRENT FILE (thanks Gary Bernhardt)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'), 'file')
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction
map <Leader>n :call RenameFile()<cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
