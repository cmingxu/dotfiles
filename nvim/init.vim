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

nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
set termguicolors " this variable must be enabled for colors to be applied properly
set encoding=UTF-8
set winwidth=20
set winminwidth=20
set guifont=Hack\ Nerd\ Font\ Mono:h13

" a list of groups can be found at `:help nvim_tree_highlight`
highlight NvimTreeFolderIcon guibg=blue

colorscheme rvcs

nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

tnoremap <silent> <M-i> <C-\><C-n>:RnvimrResize<CR>
nnoremap <silent> <M-o> :RnvimrToggle<CR>
tnoremap <silent> <M-o> <C-\><C-n>:RnvimrToggle<CR>
