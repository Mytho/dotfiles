" ------------------------------------------------------------------------------
" GENERAL SETTINGS
" ------------------------------------------------------------------------------

	setlocal expandtab
	setlocal tabstop=2
	setlocal shiftwidth=2

" ------------------------------------------------------------------------------
" FOLDING SETTINGS
" ------------------------------------------------------------------------------

	setlocal foldlevel=0
	setlocal foldnestmax=5

" ------------------------------------------------------------------------------
" AUTO COMMANDS
" ------------------------------------------------------------------------------

	" Mark trailing comma's
	" autocmd BufEnter,InsertLeave <buffer> 2match Error /,\_s*[])}]/
