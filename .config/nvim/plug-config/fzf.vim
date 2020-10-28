let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }

let $FZF_DEFAULT_OPTS='--reverse'

command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
