" ------------------------------------------------------------------------------
" GENERAL SETTINGS
" ------------------------------------------------------------------------------

	setlocal tabstop=4                               " Tabtop
	setlocal shiftwidth=4                            " Shiftwidth
	setlocal omnifunc=javascriptcomplete#CompleteJS  " Enable autocomplete

" ------------------------------------------------------------------------------
" FOLDING SETTINGS
" ------------------------------------------------------------------------------

	setlocal foldlevel=0

" ------------------------------------------------------------------------------
" AUTO COMMANDS
" ------------------------------------------------------------------------------

	autocmd BufEnter,InsertLeave <buffer> 2match Error /,\_s*[])}]/
