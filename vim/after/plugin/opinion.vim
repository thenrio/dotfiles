" {{ override of https://github.com/rstacruz/vim-opinion
"
" Choice is to load and override what I do not like?

set mouse= " I prefer no mouse!
set nonu " airline shows current line / total line, I trade the size of the line number bar!
set nogdefault " need explicit g at end of s//
" }}

" {{ own stuff
"
" Reselect visual block after indent/outden
"
vnoremap < <gv
vnoremap > >gv

" New colorscheme onedark?
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }
colorscheme onedark

" UI
set whichwrap+=<,>,h,l,[,]  " backspace and cursor keys wrap to 
                            " I actually like it, though it is NOT RECOMMENDED in help
" paste
set pastetoggle=<F2>
" }}
