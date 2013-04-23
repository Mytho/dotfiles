" ------------------------------------------------------------------------------
" GENERAL SETTINGS
" ------------------------------------------------------------------------------

	set autoindent                      " Autoindenting
	set backspace=indent,eol,start      " Backspace functionality
	set completeopt=longest,menuone     " Show menu and preview window
	set laststatus=2                    " Always show the StatusLine
	set list                            " Show non text characters
	set listchars=eol:¬,tab:•·,trail:·  " Characters to use for non text
	set matchpairs+=<:>                 " Add HTML brackets to matching pairs
	set matchtime=1                     " Show matching bracket for .X seconds
	set nocompatible                    " Filetype detection works better this way
	set nocursorline                    " No cursorline by default
	set noerrorbells                    " No errorbells
	set novisualbell                    " No visualbell
	set nohidden                        " Closing tabs / windows also closes buffer
	set nonumber                        " No line numbers
	set nopaste                         " Do not disable autoindent etc. when pasting
	set nowrap                          " Do not wrap lines
	set ruler                           " Position info
	set scrolloff=0                     " Keep a margin of X lines when scrolling
	set shiftwidth=2                    " Shift width
	set showcmd                         " Show command in StatusLine
	set showmatch                       " Show matching brackets
	set smartindent                     " Use smart indenting
	set tabstop=2                       " Tab stop
	set tabline=%!CustomTabLine()       " Custom tabline
	set wildignore=.svn,*.pyc           " Ignore files in wildmode
	set wildmode=longest,list,full      " Bash like path completion

" ------------------------------------------------------------------------------
" FOLDING SETTINGS
" ------------------------------------------------------------------------------

	set fillchars=fold:·     " Character used as fill
	set foldenable           " (Don't) fold by default (foldenable / nofoldenable)
	set foldlevel=1          " Use X levels of folding
	set foldmarker={,}       " Set brackets as default fold marker
	set foldmethod=indent    " Method of folding
	set foldminlines=1       " Do not fold when less then X lines
	set foldnestmax=2        " Maximum of X nested folds
	set foldtext=FoldText()  " Function used to fold text

" ------------------------------------------------------------------------------
" SEARCH & BACKUP SETTINGS
" ------------------------------------------------------------------------------

	set hlsearch                 " Highlight Search
	set incsearch                " Incremental Search
	set ignorecase               " Ignore cases when searching ..
	set smartcase                " .. unless uppercase in term
	set backup                   " Turn on backup
	set backupdir=~/.vim/backup  " Where to put the backup files
	set directory=~/.vim/swap    " Where to put the swap files

" ------------------------------------------------------------------------------
" CURSOR & STATUS LINE
" ------------------------------------------------------------------------------

	" Change cursor in insert-mode
	let &t_SI = "\eP\e[3 q\e\\"
	let &t_EI = "\eP\e[1 q\e\\"

	set statusline=%F                                  " Filename and path
	set statusline+=\ [%{strlen(&fenc)?&fenc:'none'},  " File encoding
	set statusline+=%{&ff}]                            " File format
	set statusline+=\ %y                               " Filetype
	set statusline+=\ %m                               " Modified flag
	set statusline+=\ %r                               " Read only flag
	set statusline+=%=                                 " Left/right separator
	set statusline+=\ %c,                              " Cursor column
	set statusline+=\ %l/%L                            " Cursor line/total lines
	set statusline+=\ %P                               " Percent through file

" ------------------------------------------------------------------------------
" SYNTAX SETTINGS
" ------------------------------------------------------------------------------

	set t_Co=256        " Use 256 colors
	set background=dark " Use dark background

	syntax on           " Turn on syntax highlighting
	filetype on         " Turn on filetype detection
	filetype plugin on  " Causes errors in filetype detection

	highlight clear     " Clear all highlighting

	" Code syntax
	highlight Normal          ctermfg=250  ctermbg=234
	highlight Underlined      ctermfg=250  ctermbg=234  cterm=underline
	highlight Comment         ctermfg=238  ctermbg=none
	highlight SpecialComment  ctermfg=238  ctermbg=none
	highlight Delimiter       ctermfg=238  ctermbg=none

	highlight String          ctermfg=39   ctermbg=none
	highlight Character       ctermfg=39   ctermbg=none

	highlight Constant        ctermfg=30   ctermbg=none
	highlight Number          ctermfg=30   ctermbg=none
	highlight Boolean         ctermfg=30   ctermbg=none
	highlight Float           ctermfg=30   ctermbg=none

	highlight Statement       ctermfg=70   ctermbg=none
	highlight Conditional     ctermfg=70   ctermbg=none
	highlight Repeat          ctermfg=70   ctermbg=none
	highlight Operator        ctermfg=70   ctermbg=none
	highlight Keyword         ctermfg=70   ctermbg=none
	highlight SpecialChar     ctermfg=70   ctermbg=none
	highlight Tag             ctermfg=70   ctermbg=none

	highlight Define          ctermfg=117  ctermbg=none
	highlight Type            ctermfg=117  ctermbg=none
	highlight Structure       ctermfg=117  ctermbg=none
	highlight Typedef         ctermfg=117  ctermbg=none
	highlight Special         ctermfg=117  ctermbg=none

	highlight Function        ctermfg=42   ctermbg=none
	highlight Exception       ctermfg=42   ctermbg=none
	highlight PreProc         ctermfg=42   ctermbg=none
	highlight Include         ctermfg=42   ctermbg=none
	highlight PreCondit       ctermfg=42   ctermbg=none

	highlight Identifier      ctermfg=67   ctermbg=none
	highlight StorageClass    ctermfg=67   ctermbg=none

	highlight Label           ctermfg=193  ctermbg=none
	highlight Macro           ctermfg=193  ctermbg=none
	highlight Debug           ctermfg=193  ctermbg=none

	" Special types
	highlight Folded          ctermfg=30   ctermbg=none
	highlight FoldColumn      ctermfg=30   ctermbg=234
	highlight InvalidStyle    ctermfg=124  ctermbg=none
	highlight NonText         ctermfg=235  ctermbg=none
	highlight SpecialKey      ctermfg=235  ctermbg=none

	" Editor
	highlight Cursor          ctermfg=232  ctermbg=250
	highlight CursorLine      ctermfg=none ctermbg=232  cterm=none
	highlight CursorColumn    ctermfg=none ctermbg=232  cterm=none
	highlight CursorLineNr    ctermfg=248  ctermbg=none
	highlight LineNr          ctermfg=238  ctermbg=none
	highlight SignColumn      ctermfg=none ctermbg=234
	highlight StatusLine      ctermfg=232  ctermbg=248
	highlight StatusLineNC    ctermfg=232  ctermbg=238
	highlight TabLine         ctermfg=238  ctermbg=232  cterm=none
	highlight TabLineFill     ctermfg=232  ctermbg=232
	highlight Visual          ctermfg=232  ctermbg=39
	highlight VertSplit       ctermfg=232  ctermbg=232
	highlight MatchParen      ctermfg=232  ctermbg=70

	" Autocomplete
	highlight Pmenu           ctermfg=37   ctermbg=232
	highlight PmenuSel        ctermfg=193  ctermbg=70
	highlight PmenuSbar       ctermfg=none ctermbg=232
	highlight PmenuThumb      ctermfg=100  ctermbg=none

	" NERDtree
	highlight Title           ctermfg=67   ctermbg=none
	highlight Directory       ctermfg=70   ctermbg=none

	" Diff
	highlight DiffAdd         ctermfg=none ctermbg=22
	highlight DiffChange      ctermfg=100  ctermbg=0
	highlight DiffDelete      ctermfg=160  ctermbg=52
	highlight DiffText        ctermfg=none ctermbg=58

	" Messages
	highlight Error           ctermfg=124  ctermbg=174   cterm=underline
	highlight Search          ctermfg=193  ctermbg=70
	highlight IncSearch       ctermfg=193  ctermbg=70
	highlight Todo            ctermfg=193  ctermbg=70
	highlight ModeMsg         ctermfg=45   ctermbg=none
	highlight MoreMsg         ctermfg=45   ctermbg=none
	highlight WarningMsg      ctermfg=174  ctermbg=124

" ------------------------------------------------------------------------------
" AUTO COMMANDS
" ------------------------------------------------------------------------------

	" Repeat comments
	autocmd FileType * set formatoptions=croql
	autocmd FileType * set comments=s1:/*,mb:*,ex:*/

	" Change directory
	autocmd BufEnter * silent! lcd %:p:h

	" Highlight inline tabs as invalid style
	autocmd BufEnter,BufLeave,InsertEnter,InsertLeave *
		\ match InvalidStyle /[^\t]\zs\t\+/

	" Check for trailing whitespaces / remove them when saving
	autocmd FileType conf let b:noStripWhiteSpace=1
	autocmd BufWritePre * call StripTrailingWhiteSpace()

	" Do NOT higlight invalid style in help files
	autocmd FileType help highlight InvalidStyle ctermbg=bg ctermfg=fg

	" Toggle cursorline when entering/leaving insert mode
	autocmd InsertEnter,InsertLeave * set cursorline!
	autocmd InsertEnter             * highlight CursorLineNr ctermbg=232
	autocmd InsertLeave             * highlight CursorLineNr ctermbg=none

" ------------------------------------------------------------------------------
" FILETYPES
" ------------------------------------------------------------------------------

	" Set filetypes for certain extensions
	autocmd BufNewFile,BufRead *.coffee     set filetype=coffee
	autocmd BufNewFile,BufRead *.css        set filetype=css
	autocmd BufNewFile,BufRead *.html,*.htm set filetype=html
	autocmd BufNewFile,BufRead *.less       set filetype=less
	autocmd BufNewFile,BufRead *.md         set filetype=markdown
	autocmd BufNewFile,BufRead *.mustache   set filetype=mustache
	autocmd BufNewFile,BufRead *.plist      set filetype=xml
	autocmd BufNewFile,BufRead *.sql        set filetype=mysql

	" Omnicomplete
	autocmd  FileType css        set omnifunc=csscomplete#CompleteCSS
	autocmd  FileType html       set omnifunc=htmlcomplete#CompleteTags
	autocmd  FileType javascript set omnifunc=javascriptcomplete#CompleteJS
	autocmd  FileType python     set omnifunc=pythoncomplete#Complete

	" Easy filetype switching
	nnoremap <LEADER>ta :set filetype=htmljinja<CR>
	nnoremap <LEADER>tc :set filetype=css<CR>
	nnoremap <LEADER>th :set filetype=html<CR>
	nnoremap <LEADER>tj :set filetype=javascript<CR>
	nnoremap <LEADER>tm :set filetype=mysql<CR>
	nnoremap <LEADER>to :set filetype=coffee<CR>
	nnoremap <LEADER>tp :set filetype=php<CR>
	nnoremap <LEADER>tq :set filetype=jquery<CR>
	nnoremap <LEADER>ts :set filetype=sql<CR>
	nnoremap <LEADER>ty :set filetype=python<CR>

	" Override default filetype settings
	autocmd BufNewFile,BufRead *.coffee set sw=2 ts=2 et nosi foldlevel=0
	autocmd BufNewFile,BufRead *.less   set foldmethod=indent fdn=4 noet
	autocmd BufNewFile,BufRead *.md     set et fdn=0 sw=4 ts=4
	autocmd BufNewFile,BufRead *.php    set fdn=2 noet foldlevel=1

	" SetWrap for certain filetypes
	autocmd BufRead *.md,*.txt call SetWrap()

" ------------------------------------------------------------------------------
" PLUGIN SETTINGS
" ------------------------------------------------------------------------------

	" NERDTree
	let NERDTreeWinSize = 30

	" ZenCoding
	let g:user_zen_leader_key     = '<C-y>'
	let g:user_zen_expandabbr_key = '<C-e>'

	" PyDiction
	let g:pydiction_location = '~/.vim/plugin/pydiction/complete-dict'

	" Closetag
	" Usage: <C-_> closes current tag
	let g:closetag_default_xml=1
	autocmd FileType html,htmljinja,php let b:closetag_html_style=1
	autocmd FileType html,htmljinja,php,xml source ~/.vim/scripts/closetag.vim

" ------------------------------------------------------------------------------
" FUNCTIONS
" ------------------------------------------------------------------------------

	" Get the number of columns for a given line
	function! CountColumns( lineNum )
		return len(getline(a:lineNum))
	endfunction

	" Custom TabLabel
	function! CustomTabLabel(n)
		let buflist = tabpagebuflist(a:n)
		let winnr = tabpagewinnr(a:n)
		let label = bufname(buflist[winnr - 1])
		let fname = fnamemodify(label, ':p:t')
		return len(fname) ? fname : '[No Name]'
	endfunction

	" Custom TabLine
	function! CustomTabLine()
		let s = ''
	  for i in range(tabpagenr('$'))
	    " Select the highlighting
	    if i + 1 == tabpagenr()
	      let s .= '%#TabLineSel#'
	    else
	      let s .= '%#TabLine#'
	    endif
	    " Set the tab page number (for mouse clicks)
	    let s .= '%' . (i + 1) . 'T'
	    " The label is made by CustomTabLabel()
	    let s .= ' %{CustomTabLabel(' . (i + 1) . ')} '
	  endfor
	  " After the last tab fill with TabLineFill and reset tab page nr
	  let s .= '%#TabLineFill#%T'
	  " Right-align the label to close the current tab page
	  if tabpagenr('$') > 1
	    let s .= '%=%#TabLine#%999X '
	  endif
	  return s
  endfunction

	" Fill line with string up to given textwidth
	function! FillLine( str, ... )
		let tw = 80
		" Set tw to desired length
		if a:0 > 0 | let tw = a:1 | endif
		" Strip trailing spaces
		.s/[[:space:]]*$//
		" Calculate number of `str`s to insert
		let reps = (tw - col("$")) / len(a:str)
		" Insert `str`s
		if reps > 0
			.s/$/\=(' '.repeat(a:str, reps))/
		endif
	endfunction

	" Nicely fold text
	function! FoldText()
			let line = getline(v:foldstart)
			let nnum = nextnonblank(v:foldstart + 1)
			let cntr = 2
			while nnum < v:foldend
				let cntr = cntr + 1
				let nnum = nnum + 1
			endwhile
			let line = substitute(line, '^[ \t]*', '', 'g')
			return "··· " . cntr . " lines: " . line . " "
	endfunction

	" SmartIndent on blank line
	function! IndentWithI()
		if len(getline('.')) == 0
				return "\"_ddO"
		else
				return "i"
		endif
	endfunction

	" Toggle between line numbers and relative line numbers
	function! ToggleNumberType()
		if (&relativenumber == 1)
			set number
		else
			set relativenumber
		endif
	endfunction

	" Wrap text nicely and readable
	function! SetWrap()
		setlocal wrap
		setlocal nolist
		setlocal linebreak
		setlocal formatoptions+=aln
		nnoremap <buffer> <silent> j gj
		nnoremap <buffer> <silent> k gk
	endfunction

	" Strip trailing whitespace
	function! StripTrailingWhiteSpace()
		" Exclude these filetypes
		if exists('b:noStripWhiteSpace')
			return
		endif
		%s/\s\+$//e
	endfunction

	" Tabcompletion
	function! TabCompletion( backwards )
	if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
		return "\<Tab>"
	else
		if a:backwards
			return "\<C-P>"
		else
			return "\<C-N>"
		endif
	endif
	endfunction

	" Toggle InvalidStyle highlighting
	let s:invalidStyleIsVisible = 1
	function! ToggleInvalidStyle()
		if (s:invalidStyleIsVisible)
			let s:invalidStyleIsVisible = 0
			return "set background=dark | colors ".g:colors_name
		else
			let s:invalidStyleIsVisible = 1
			return "highlight InvalidStyle ctermbg=red ctermfg=white"
		endif
	endfunction

	" Underline the previous line with string
	function! UnderLine( str )
		let lineNumber = line('.') - 1
		let lineWidth = CountColumns(lineNumber)
		call FillLine(a:str, lineWidth)
	endfunction

" ------------------------------------------------------------------------------
" COMMANDS
" ------------------------------------------------------------------------------

	command! -nargs=* FillLine           call FillLine(<f-args>)
	command! -nargs=* SetWrap            call SetWrap()
	command! -nargs=0 ToggleInvalidStyle call ToggleInvalidStyle()
	command! -nargs=* UnderLine          call UnderLine(<f-args>)

" ------------------------------------------------------------------------------
" ABBREVIATIONS
" ------------------------------------------------------------------------------

	" Open help in seperate tab
	cnoreabbrev h    tab h
	cnoreabbrev help tab help

" ------------------------------------------------------------------------------
" KEY MAPPINGS (NORMAL MODE)
" ------------------------------------------------------------------------------

	" Quick command line access
	noremap ; :
	noremap :: ;

	" Save/Quit mappings
	noremap <C-d> :sh<CR>

	" Save file as superuser
	noremap <LEADER>WW :%!sudo tee > /dev/null %<CR>

	" Toggle stuff
	noremap <LEADER>A :set wrap! wrap?<CR>
	noremap <LEADER>G :GitGutterToggle<CR>
	noremap <LEADER>H :noh<CR>
	noremap <LEADER>L :set list! list?<CR>
	noremap <LEADER>M :DoShowMarks!<CR>
	noremap <LEADER>N :set number! number?<CR>
	noremap <LEADER>P :set paste! paste?<CR>
	noremap <LEADER>R :call ToggleNumberType()<CR>

	" Folding / Unfolding
	noremap <LEADER>f       zM
	noremap <LEADER>F       zR
	noremap <SPACE>         za
	noremap <LEADER><SPACE> zMzv

	" Macros
	nnoremap K @q

	" Plugins
	nnoremap  <C-n>     :NERDTreeToggle<CR>
	nnoremap  <C-x>     <LEADER>c<SPACE>
	inoremap  <C-o>     <C-x><C-o>
	nnoremap  <LEADER>j :JSHint<CR>

	" Tabs
	noremap <C-H> :tabp<CR>
	noremap <C-L> :tabn<CR>
	noremap <C-J> :tabnew<CR>

	" Buffers
	noremap <RIGHT>    :bnext<CR>
	noremap <LEFT>     :bprevious<CR>
	noremap <LEADER>b  :buffers<CR>:buffer<SPACE>

	" Commands
	nnoremap <LEADER>u :UnderLine -<CR>

	" Windows
	noremap =          <C-W>+
	noremap -          <C-W>-
	noremap _          <C-W><
	noremap +          <C-W>>
	noremap WH         :leftabove vnew<CR>
	noremap WJ         :rightbelow new<CR>
	noremap WL         :rightbelow vnew<CR>
	noremap WK         :leftabove new<CR>
	noremap <LEADER>\  :vertical resize 85<CR>
	noremap <LEADER>\\ <C-W>=

	" Cycle through changed blocks
	noremap <UP>   :GitGutterPrevHunk<CR>
	noremap <DOWN> :GitGutterNextHunk<CR>

	" Sessions
	noremap <LEADER>SS :wa<CR>:mksession! ~/.vim/sessions/default<CR>
	noremap <LEADER>SO :wa<CR>:so ~/.vim/sessions/default<CR>

	" ShowMarks
	nnoremap ` :ShowMarksOnce<CR>`
	nnoremap ' :ShowMarksOnce<CR>'

	" Open file in default application
	noremap <C-O> :! open %<CR><CR>

	" Yank to end of line
	noremap Y y$

	" Display
	nnoremap <LEADER>d :echo strftime("%c")<CR>

	" Clear entire file
	noremap <LEADER>C ggvG$c

	" Auto-indent
	nnoremap <EXPR> i IndentWithI()

	" Temporary SQL query
	noremap <LEADER>EQ :e /var/tmp/query.sql<CR>:set ft=mysql<CR>

	" Quick `.vimrc` handling
	noremap <LEADER>v :e $MYVIMRC<CR>
	noremap <LEADER>V :exec 'tabdo windo source $MYVIMRC'<CR>:noh<CR>

" ------------------------------------------------------------------------------
" KEY MAPPINGS (VISUAL MODE)
" ------------------------------------------------------------------------------

	" Ignore Shift-K
	vnoremap K k

	" Sort/Column visual selection
	vnoremap <LEADER>S :sort<CR>
	vnoremap <LEADER>C :!column -tx -s ' ' \| sed 's/ \([^ ]\)/\1/g'<CR>

	" Search visual selection
	vnoremap <silent> * :<C-U>
		\let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
		\gvy/<C-R><C-R>=substitute(
		\escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
		\gV:call setreg('"', old_reg, old_regtype)<CR>
	vnoremap <silent> # :<C-U>
		\let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
		\gvy?<C-R><C-R>=substitute(
		\escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
		\gV:call setreg('"', old_reg, old_regtype)<CR>

" ------------------------------------------------------------------------------
" KEY MAPPINGS (INSERT MODE)
" ------------------------------------------------------------------------------

	" Tabcompletion
	inoremap <TAB>   <C-R>=TabCompletion(0)<CR>
	inoremap <S-TAB> <C-R>=TabCompletion(1)<CR>

	" Quick save
	inoremap <ESC><ESC> <ESC>:w<CR>a

	" Exit insert mode and save changes
	inoremap jj <ESC>:w<CR>

	" Commands
	inoremap <LEADER>u <ESC>:UnderLine -<CR>o

	" Enable numpad
	inoremap <ESC>Oq 1
	inoremap <ESC>Or 2
	inoremap <ESC>Os 3
	inoremap <ESC>Ot 4
	inoremap <ESC>Ou 5
	inoremap <ESC>Ov 6
	inoremap <ESC>Ow 7
	inoremap <ESC>Ox 8
	inoremap <ESC>Oy 9
	inoremap <ESC>Op 0
	inoremap <ESC>On .
	inoremap <ESC>OR *
	inoremap <ESC>OQ /
	inoremap <ESC>Ol +
	inoremap <ESC>OS -

" ------------------------------------------------------------------------------
" KEY MAPPINGS (COMMAND MODE)
" ------------------------------------------------------------------------------

	" Enable numpad
	cmap <ESC>Oq 1
	cmap <ESC>Or 2
	cmap <ESC>Os 3
	cmap <ESC>Ot 4
	cmap <ESC>Ou 5
	cmap <ESC>Ov 6
	cmap <ESC>Ow 7
	cmap <ESC>Ox 8
	cmap <ESC>Oy 9
	cmap <ESC>On .
	cmap <ESC>OR *
	cmap <ESC>OQ /
	cmap <ESC>Ol +
	cmap <ESC>OS -

" ------------------------------------------------------------------------------
" VIMDIFF
" ------------------------------------------------------------------------------

	if &diff

		" Keymappings
		nnoremap <SPACE><SPACE> :qa<CR>
		nnoremap J              ]czz
		nnoremap K              [czz

	endif

" ------------------------------------------------------------------------------
" VERSION SPECIFIC SETTINGS
" ------------------------------------------------------------------------------

	if v:version >= 703

		" Use relative line numbers
		set relativenumber

		" Different settings for active/focussed window
		augroup WinToggleNumber
			autocmd!
			autocmd WinEnter * setlocal relativenumber
			autocmd WinLeave * setlocal norelativenumber
		augroup end

		" Toggle (relative)number when entering/leaving insert mode
		autocmd InsertEnter * setlocal number
		autocmd InsertLeave * setlocal relativenumber

	endif
