" from https://github.com/rstacruz/vim-from-scratch
set nocompatible

" let it in after/plugin (say opinion.vim) is not successful, as an earlier
" file (say fzf.vim) will have incorrect <leader> expansion in a map.
" 
let g:mapleader=" "

call plug#begin('~/.vim/vendor')
" sensible defaults are pulled from there
Plug 'rstacruz/vim-opinion'

" colorscheme test onedark?
Plug 'joshdick/onedark.vim'

" fuzzy search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" art
Plug 'godlygeek/tabular'
Plug 'vim-scripts/DrawIt'

" edit
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'

" git
Plug 'tpope/vim-fugitive'

" status line, gutter
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'

" langages/syntax
Plug 'elixir-editors/vim-elixir'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'sheerun/vim-polyglot'

" coc
" also from https://github.com/rstacruz/vim-coc-settings
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-lists', {'do': 'yarn install --frozen-lockfile'} " mru and stuff
Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tslint', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}

" Snippets are separated, this is a popular collection.
Plug 'honza/vim-snippets'

call plug#end()
