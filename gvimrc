:colorscheme ir_black 
:set number
:set background=dark
:set transparency=05
:set guifont=monaco:h14
:set linespace=2
:set tabstop=4
:set shiftwidth=4
:set expandtab
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
let g:SuperTabDefaultCompletionType = '<c-x><c-o>'
:nmap <F7> :g#\({\n\)\@<=#.,/}/sort<CR>
:command! Sortcss :g#\({\n\)\@<=#.,/}/sort
au BufRead,BufNewFile *.vm set filetype=html
vmap co :call EnhancedCommentify('','guess')<CR>
vmap cc :call EnhancedCommentify('','comment')<CR>
vmap cd :call EnhancedCommentify('','decomment')<CR>
let g:commandTMaxFiles=100000
let g:commandTMaxDepth=50
let g:commandTShowDotFiles=1
set wildignore+=**/target/**
