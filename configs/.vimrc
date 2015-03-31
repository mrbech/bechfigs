"Pathogen
execute pathogen#infect()

" Color and Syntax
set background=dark
colorscheme solarized
syntax enable

"Tabs
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set smartindent

" UI
set number
set cursorline
filetype plugin indent on 
set wildmode=longest,list,full
set wildmenu
set showmatch

" Tabs
map tn :tabnext <RETURN>
map tb :tabprevious <RETURN>

" Panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Searching
set incsearch

" Completetion
set omnifunc=syntaxcomplete#Complete

"Fold
nnoremap <space> za

"""""""""""
" PLUGINS "
"""""""""""

" Airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1

" Supertab
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

" Easymotion
map <Leader> <Plug>(easymotion-prefix)

"vim2hs
let g:haskell_conceal_wide = 1

" Syntastic
let g:syntastic_check_on_w = 1

"Haskell ghc-mod
" Reload
map <silent> tu :call GHC_BrowseAll()<CR>
" Type Lookup
map <silent> tw :call GHC_ShowType(1)<CR>

"Haskell hdevtools
au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>
au FileType haskell nnoremap <buffer> <silent> <F3> :HdevtoolsInfo<CR>
