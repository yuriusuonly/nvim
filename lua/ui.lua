-- User Interface

require("indent_blankline").setup({
  char = '┊',
  show_trailing_blankline_indent = false
})

require('gitsigns').setup({
  signs = {
    add = { text = '+' },
    change = { text = '+' },
    delete = { text = '-' },
    topdelete = { text = '-' },
    changedelete = { text = '-' },
    untracked = { text = '┆' }
  }
})
