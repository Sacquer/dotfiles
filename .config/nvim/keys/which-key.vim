" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'

" No floating windows for this
let g:which_key_use_floating_win = 0

" Single mappings
let g:which_key_map['e'] = [ ':CocCommand explorer'       , 'explorer' ]
let g:which_key_map['f'] = [ ':Files'                     , 'search files' ]
let g:which_key_map[';'] = [ ':Commands'                  , 'commands' ]

" Group mappings

" s is for search
let g:which_key_map.s = {
  \ 'name' : '+search' ,
  \ '/' : [':History/'              , 'history'],
  \ 'h' : [':History'               , 'file history'],
  \ 'H' : [':History:'              , 'command history'],
  \ 'a' : [':Ag'                    , 'text Ag'],
  \ 't' : [':Rg'                    , 'text Rg'],
  \ 'z' : [':FZF'                   , 'FZF']
  \}

" a is for actions
let g:which_key_map.a = {
  \ 'name' : '+actions' ,
  \ 't' : [':FloatermToggle'         , 'terminal'],
  \ 'n' : [':set nonumber!'          , 'line-numbers'],
  \ 'r' : [':set norelativenumber!'  , 'relative line nums'],
  \}

" b is for buffer
let g:which_key_map.b = {
  \ 'name' : '+buffer' ,
  \ '?' : ['Buffers'   , 'fzf-buffer']      ,
  \}

" g is for git
let g:which_key_map.g = {
  \ 'name' : '+git' ,
  \ 'g' : [':GGrep'                            , 'git grep'],
  \ 'G' : [':Gstatus'                          , 'status'],
  \}

" l is for language server protocol
let g:which_key_map.l = {
  \ 'name' : '+lsp' ,
  \ '.' : [':CocConfig'                          , 'config'],
  \ ';' : ['<Plug>(coc-refactor)'                , 'refactor'],
  \ 'a' : ['<Plug>(coc-codeaction)'              , 'line action'],
  \ 'A' : ['<Plug>(coc-codeaction-selected)'     , 'selected action'],
  \ 'b' : [':CocNext'                            , 'next action'],
  \ 'B' : [':CocPrev'                            , 'prev action'],
  \ 'c' : [':CocList commands'                   , 'commands'],
  \ 'd' : ['<Plug>(coc-definition)'              , 'definition'],
  \ 'D' : ['<Plug>(coc-declaration)'             , 'declaration'],
  \ 'e' : [':CocList extensions'                 , 'extensions'],
  \ 'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],
  \ 'F' : ['<Plug>(coc-format)'                  , 'format'],
  \ 'h' : ['<Plug>(coc-float-hide)'              , 'hide'],
  \ 'i' : ['<Plug>(coc-implementation)'          , 'implementation'],
  \ 'I' : [':CocList diagnostics'                , 'diagnostics'],
  \ 'j' : ['<Plug>(coc-float-jump)'              , 'float jump'],
  \ 'l' : ['<Plug>(coc-codelens-action)'         , 'code lens'],
  \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
  \ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
  \ 'o' : ['<Plug>(coc-openlink)'                , 'open link'],
  \ 'O' : [':CocList outline'                    , 'outline'],
  \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
  \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
  \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
  \ 'r' : ['<Plug>(coc-rename)'                  , 'rename'],
  \ 'R' : ['<Plug>(coc-references)'              , 'references'],
  \ 's' : [':CocList -I symbols'                 , 'references'],
  \ 'S' : [':CocList snippets'                   , 'snippets'],
  \ 't' : ['<Plug>(coc-type-definition)'         , 'type definition'],
  \ 'u' : [':CocListResume'                      , 'resume list'],
  \ 'U' : [':CocUpdate'                          , 'update CoC'],
  \ 'v' : [':Vista!!'                            , 'tag viewer'],
  \ 'z' : [':CocDisable'                         , 'disable CoC'],
  \ 'Z' : [':CocEnable'                          , 'enable CoC'],
  \}

" t is for terminal
let g:which_key_map.t = {
  \ 'name' : '+terminal' ,
  \ ';' : [':FloatermNew --wintype=popup --height=6'        , 'terminal'],
  \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
  \ 'e' : [':FloatermNew iex'                               , 'elixir'],
  \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
  \ 'n' : [':FloatermNew node'                              , 'node'],
  \ 'r' : [':FloatermNew irb'                               , 'ruby'],
  \ 't' : [':FloatermToggle'                                , 'toggle'],
  \}

" w is for wiki
let g:which_key_map.w = {
  \ 'name' : '+wiki' ,
  \}

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
