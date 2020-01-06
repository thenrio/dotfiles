" fuzzy finder
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>g :GitFiles<CR>
nnoremap <leader>p :History<CR>
nnoremap <leader>t :Files<CR>

" skip .gitignore files even if not using GitFiles search?
"
" see https://github.com/junegunn/fzf.vim/issues/121
" let $FZF_DEFAULT_COMMAND = 'rg --files --hidden'
