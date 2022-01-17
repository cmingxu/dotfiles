--Make line numbers default
vim.wo.number = true
--Enable mouse mode
vim.o.mouse = 'a'
--Enable break indent
vim.o.breakindent = true
--Save undo history
vim.opt.undofile = true
--Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true
--Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'
--Set colorscheme
vim.o.termguicolors = true
-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'
vim.g.border_style = "rounded"
vim.g.markdown_fenced_languages = {
    "bash=sh",
}
vim.opt.backup = false -- creates a backup file
vim.opt.clipboard = "" -- don't use clipboard
vim.opt.cmdheight = 1 -- more space in the neovim command line for displaying messages
vim.opt.colorcolumn = "99999" -- fixes indentline for now
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.conceallevel = 0 -- so that `` is visible in markdown files
vim.opt.cursorline = true -- highlight the current line
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.fileencoding = "utf-8" -- the encoding written to a file
vim.opt.foldexpr = "" -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
vim.opt.foldmethod = "manual" -- folding set to "expr" for treesitter based folding
vim.opt.hidden = true -- required to keep multiple buffers and open multiple buffers
vim.opt.hlsearch = true -- highlight all matches on previous search pattern
vim.opt.ignorecase = true -- ignore case in search patterns
vim.opt.list = true
vim.opt.listchars = "tab:│ ,trail:·,nbsp:+"
vim.opt.numberwidth = 1 -- set number column width to 2 {default 4}
vim.opt.pumheight = 10 -- pop up menu height
vim.opt.relativenumber = true -- set relative numbered lines
vim.opt.scrolloff = 4 -- is one of my fav
vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
vim.opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
vim.opt.sidescrolloff = 4
vim.opt.signcolumn = "yes" -- always show the sign column otherwise it would shift the text each time
vim.opt.smartcase = true -- smart case
vim.opt.smartindent = true -- make indenting smarter again
vim.opt.spell = false -- disable spell checking
vim.opt.spelllang = "en" -- language for spell checking
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false -- creates a swapfile
vim.opt.tabstop = 2 -- insert 2 spaces for a tab
vim.opt.termguicolors = false -- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 500 -- timeout length
vim.opt.title = true -- set the title of window to the value of the titlestring
vim.opt.titlestring = "%<%F - nvim" -- what the title of the window will be set to
vim.opt.undodir = vim.fn.stdpath("cache") .. "/undo"
vim.opt.undofile = true -- enable persistent undo
vim.opt.updatetime = 300 -- faster completion
vim.opt.wrap = true -- display lines as one long line
vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program) it is not allowed to be edited

vim.opt.showtabline = 2 -- always show tabs
vim.opt.laststatus = 2 -- hide statusline

