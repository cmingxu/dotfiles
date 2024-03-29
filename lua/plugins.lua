return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    }
  }

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'vijaymarupudi/nvim-fzf'
  use 'junegunn/fzf.vim'
  use 'junegunn/fzf'

  use 'norcalli/nvim-colorizer.lua'

  use 'williamboman/nvim-lsp-installer'

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'saadparwaiz1/cmp_luasnip'
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin

  use 'nvim-treesitter/nvim-treesitter'
  -- Additional textobjects for treesitter
  use 'nvim-treesitter/nvim-treesitter-textobjects'

  use 'fatih/vim-go'

  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'ms-jpq/coq_nvim'
  use 'ms-jpq/coq.artifacts'
  use 'ms-jpq/coq.thirdparty'
  use "rafamadriz/friendly-snippets"

  use 'folke/which-key.nvim' 
  use 'shaeinst/roshnivim-cs'
  use 'glepnir/dashboard-nvim'
  use 'tpope/vim-surround' use 'sunjon/shade.nvim'
  use 'kevinhwang91/rnvimr'

  use 'EdenEast/nightfox.nvim'
  use {
    'yamatsum/nvim-nonicons',
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  use 'majutsushi/tagbar'
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'
  use 'ahmedkhalf/lsp-rooter.nvim'
  use 'airblade/vim-rooter'
  use 'liuchengxu/vim-which-key'

  use 'mxw/vim-jsx'
  use 'pangloss/vim-javascript'
  use 'leafgarland/typescript-vim'
  use 'peitalin/vim-jsx-typescript'
  use 'w0rp/ale'
  use 'MaxMEllon/vim-jsx-pretty'

  use 'tpope/vim-fugitive'
  use 'mattn/emmet-vim'
  use 'morhetz/gruvbox'
  use 'windwp/nvim-ts-autotag'

  use {
    'rmagatti/goto-preview',
    config = function()
      require('goto-preview').setup {}
    end
  }
  use 'tpope/vim-rails'
  use 'wakatime/vim-wakatime'
end)




