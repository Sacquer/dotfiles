" VimWiki - Wikis
let g:vimwiki_list = [
  \ {'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'},
  \ {'path': '~/vimwiki/Programming', 'syntax': 'markdown', 'ext': '.md'},
  \ {'path': '~/vimwiki/Linux', 'syntax': 'markdown', 'ext': '.md'},
  \ {'path': '~/vimwiki/DevOps', 'syntax': 'markdown', 'ext': '.md'},
  \ {'path': '~/vimwiki/ApoEx-Systems', 'syntax': 'markdown', 'ext': '.md'},
  \ ]

let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown' }

" Makes vimwiki markdown links as [text](text.md) instead of [text](text)
let g:vimwiki_markdown_link_ext = 1
