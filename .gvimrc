

set guifont=Monaco:h22
set relativenumber
set colorcolumn=81
set cursorcolumn



colorscheme Tomorrow-Night

if has('gui_macvim')
  macmenu File.New\ Tab key=<D-S-t>
  macmenu File.New\ Window key=<nop>
endif

map <silent> <D-n> :NERDTreeToggle<CR>
map <D-/> <plug>NERDCommenterToggle<CR>
imap <D-/> <Esc><plug>NERDCommenterToggle<CR>i


set noerrorbells
set vb t_vb=
set clipboard=unnamed

" javascript
let g:javascript_plugin_flow = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
