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

"Fold
nnoremap <space> za

"Markdown
au BufRead,BufNewFile *.md set filetype=markdown tw=80 spell

"""""""""""
" PLUGINS "
"""""""""""

" Airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1

" Easymotion
map <Leader> <Plug>(easymotion-prefix)

"vim2hs
let g:haskell_conceal_wide = 1
let g:haskell_conceal_bad = 1

"Haskell hdevtools
au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType <RETURN>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear <RETURN>
au FileType haskell nnoremap <buffer> <silent> <F3> :HdevtoolsInfo <RETURN>

"Typescript
let g:tsuquyomi_completion_detail = 1

let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>

"Fsharp
"let g:fsharp_interactive_bin = '/usr/sbin/fsharpi'
let g:fsharp_only_check_errors_on_write = 1
let g:syntastic_fsharp_checkers = ['']

"autocmd FileType rust set hidden 
let g:racer_cmd = "/home/mrb/.cargo/bin/racer"
let g:racer_experimental_completer = 1
let g:rustfmt_autosave = 1

"Dart
autocmd Filetype dart setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
let g:loaded_syntastic_dart_dartanalyzer_checker = 0
let dart_style_guide = 2
let dart_format_on_save = 1

"Flutter
nnoremap <leader>r :FlutterHotReload<cr>
nnoremap <leader>R :FlutterHotRestart<cr>

"language server
let g:lsc_server_commands = {
            \'fsharp': 'docker-compose run fsharp-language-server',
            \'kotlin': 'docker-compose run kotlin-language-server',
            \'dart': '/opt/flutter/bin/cache/dart-sdk/bin/dart /opt/flutter/bin/cache/dart-sdk/bin/snapshots/analysis_server.dart.snapshot --lsp'
            \}
let g:lsc_enable_autocomplete = v:false
let g:lsc_auto_map = {
    \ 'ShowHover': '<Leader>t',
    \ 'GoToDefinitionSplit':  '<Leader>T',
    \ 'FindReferences': 'gr',
    \ 'NextReference': '<C-n>',
    \ 'PreviousReference': '<C-p>',
    \ 'DocumentSymbol': 'go',
    \ 'WorkspaceSymbol': 'gS',
    \ 'SignatureHelp': 'gm',
    \ 'FindImplementations': 'gI',
    \ 'FindCodeActions': 'ga',
    \ 'Rename': 'gR',
    \ 'Completion': 'omnifunc'
    \}

"let g:rainbow_active = 1
set foldmethod=indent
set foldnestmax=1
set foldlevelstart=1


