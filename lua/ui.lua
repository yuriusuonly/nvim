-- User Interface

require("ibl").setup({
  indent = { char = '┊' },
  whitespace = { remove_blankline_trail = false },
  scope = { enabled = false }
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
