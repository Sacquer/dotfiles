" Window layout
" style 1
" +----------+------------------------+
" |          |                        |
" |          |                        |
" | undotree |                        |
" |          |                        |
" |          |                        |
" +----------+                        |
" |          |                        |
" |   diff   |                        |
" |          |                        |
" +----------+------------------------+
" Style 2
" +----------+------------------------+
" |          |                        |
" |          |                        |
" | undotree |                        |
" |          |                        |
" |          |                        |
" +----------+------------------------+
" |                                   |
" |   diff                            |
" |                                   |
" +-----------------------------------+
" Style 3
" +------------------------+----------+
" |                        |          |
" |                        |          |
" |                        | undotree |
" |                        |          |
" |                        |          |
" |                        +----------+
" |                        |          |
" |                        |   diff   |
" |                        |          |
" +------------------------+----------+
" Style 4
" +-----------------------++----------+
" |                        |          |
" |                        |          |
" |                        | undotree |
" |                        |          |
" |                        |          |
" +------------------------+----------+
" |                                   |
" |                            diff   |
" |                                   |
" +-----------------------------------+

" window style - see available layouts above
let g:undotree_WindowLayout = 2

" auto open diff window
let g:undotree_DiffAutoOpen = 1

" if set, let undotree window get focus after being opened, otherwise
" focus will stay in current window.
let g:undotree_SetFocusWhenToggle = 0

" tree node shape.
let g:undotree_TreeNodeShape = '*'

" diff command
let g:undotree_DiffCommand = "diff"

" relative timestamp
let g:undotree_RelativeTimestamp = 1

" Highlight changed text
let g:undotree_HighlightChangedText = 1

" Highlight changed text using signs in the gutter
let g:undotree_HighlightChangedWithSign = 1

" Show help line
let g:undotree_HelpLine = 1

" User commands.
command! -n=0 -bar UndotreeToggle   :call undotree#UndotreeToggle()
command! -n=0 -bar UndotreeHide     :call undotree#UndotreeHide()
command! -n=0 -bar UndotreeShow     :call undotree#UndotreeShow()
command! -n=0 -bar UndotreeFocus    :call undotree#UndotreeFocus()
