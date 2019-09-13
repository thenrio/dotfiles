" " ---------------------------------------------------------------------------
" " netrw {{{
" " ---------------------------------------------------------------------------
let g:netrw_liststyle= 3

" Per default, netrw leaves unmodified buffers open. This autocommand
" deletes netrw's buffer once it's hidden (using ':q', for example)
" https://github.com/tpope/vim-vinegar/issues/13#issuecomment-47133890
autocmd FileType netrw setl bufhidden=delete
" }}} 
