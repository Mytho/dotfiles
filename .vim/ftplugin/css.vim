" ------------------------------------------------------------------------------
" GENERAL SETTINGS
" ------------------------------------------------------------------------------
set noexpandtab                       " Tabs are not spaces
set omnifunc=csscomplete#CompleteCSS  " Enable autocomplete
set shiftwidth=2                      " Shift width
set tabstop=2                         " Tab stop

" ------------------------------------------------------------------------------
" AUTO COMMANDS
" ------------------------------------------------------------------------------
autocmd FileType css :execute "normal zM"
