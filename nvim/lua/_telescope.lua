local telescope = require('telescope')
telescope.setup {
  defaults = {
    layout_strategy = 'vertical',
    layout_config = { height = 0.95 },
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
  },
}
