" setext headers
" http://www.quora.com/Vim/Is-there-a-shortcut-to-insert-a-setext-(line-of-or-chars)-header-in-vim-when-editing-a-markdown-file

" does not like vim-markdown....
" it redefines ft...
" au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn}   set filetype=mkd
" see vim-markdown/ftdetect/mkd.vim

" was
" ~/src/vim/vim $ grep markdown ./runtime/filetype.vim
" au BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,README.md  setf markdown

map <leader>= VypVr=
map <leader>- VypVr-
