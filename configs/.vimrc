execute pathogen#infect()
if has("syntax")
    syntax on
endif
set background=dark
if has("autocmd")
  filetype plugin indent on
endif
set showcmd
set showmatch
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set number 
set smartcase
set incsearch
filetype plugin on
set omnifunc=syntaxcomplete#Complete
inoremap jj <ESC>
set noundofile
set smartcase

map tn :tabnext <RETURN>
map tb :tabprevious <RETURN>

map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

"White space stuff
"set list
"set listchars=tab:»·,eol:$,trail:·,extends:#
"set wildmode=longest,list,full

"Show directory when opening files
set wildmode=longest,list,full
set wildmenu

"Panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Supertab
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

" Go
autocmd Filetype go setlocal ts=8 sts=8 sw=8

"C++11
au BufNewFile,BufRead *.cpp set syntax=cpp11

" OCaml
set rtp+=/usr/share/ocamlmerlin/vim

