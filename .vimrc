set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'rails.vim'
Plugin 'tpope/vim-surround'
Plugin 'honza/vim-snippets'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'moll/vim-node'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'mileszs/ack.vim'
Plugin 'fatih/vim-go'
Plugin 'junegunn/vim-easy-align'
Plugin 'posva/vim-vue'
Plugin 'pangloss/vim-javascript'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'flazz/vim-colorschemes'



call vundle#end()            " required

colorscheme molokai

filetype plugin indent on    " required

if has('gui_running') 
	set guifont=Monaco:h22
endif

"set mouse=                                      " disable mouse
set nobackup                                    " disable backups

" searching
set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter


" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
set listchars+=precedes:<         " The character to show in the last column when wrap is

set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
" Ignore librarian-chef, vagrant, test-kitchen and Berkshelf cache
set wildignore+=*/tmp/librarian/*,*/.vagrant/*,*/.kitchen/*,*/vendor/cookbooks/*
" Ignore rails temporary asset caches
set wildignore+=*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*
set wildignore+=*.swp,*~,._*
set autoread
set noautowrite
set nobackup

" vue
autocmd FileType vue syntax sync fromstart
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css

" vim-color-solarized
syntax enable
set background=dark
"colorscheme solarized



" EasyAlgin
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
map <Alt-t> :CtrlP<CR>

nnoremap <Leader>f :b#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>


" ctrlp
let g:ctrlp_map = ''
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$|bower_components|node_modules',
  \ 'file': '\.pyc$\|\.pyo$\|\.rbc$|\.rbo$\|\.class$\|\.o$\|\~$\',
  \ }

map <D-t> :CtrlP<CR>
map <D-n> :NERDtree<CR>


set directory=$HOME/.vim/tmp/