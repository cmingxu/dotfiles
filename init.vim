lua require('plugins')
lua require('_options')
lua require('_coq')
lua require('_comment')
lua require('_lsp')
lua require('_coq')
lua require('_nvim-cmp')
lua require('_telescope')
lua require('_treesitter')
lua require('_nvim-tree')
lua require('_nvim-ts-autotag')
lua require('_goto-preview')

nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
set termguicolors " this variable must be enabled for colors to be applied properly
set encoding=UTF-8
set winwidth=20
set winminwidth=20
set guifont=Hack\ Nerd\ Font\ Mono:h20
set tabstop=2
set shiftwidth=2

" a list of groups can be found at `:help nvim_tree_highlight`
highlight NvimTreeFolderIcon guibg=blue

colorscheme gruvbox
set colorcolumn=80
set background=light

nnoremap <leader>f <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>g <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>b <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>h <cmd>lua require('telescope.builtin').help_tags()<cr>

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

tnoremap <silent> <M-i> <C-\><C-n>:RnvimrResize<CR>
nnoremap <silent> <M-o> :RnvimrToggle<CR>
tnoremap <silent> <M-o> <C-\><C-n>:RnvimrToggle<CR>

let g:user_emmet_install_global = 0
autocmd FileType html,css,javascript,typescript,jsx,tsx EmmetInstall

autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact

nnoremap gpd <cmd>lua require('goto-preview').goto_preview_definition()<CR>
nnoremap gpi <cmd>lua require('goto-preview').goto_preview_implementation()<CR>
nnoremap gP <cmd>lua require('goto-preview').close_all_win()<CR>
" Only set if you have telescope installed
nnoremap gpr <cmd>lua require('goto-preview').goto_preview_references()<CR>

let g:ale_fixers = {
      \   'javascript': [
        \       'DoSomething',
        \       'eslint',
        \       {buffer, lines -> filter(lines, 'v:val !=~ ''^\s*//''')},
        \   ],
        \}


