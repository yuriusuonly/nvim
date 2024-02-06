-- Key Mappings
local keymap = function(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

-- Buffer Handler
keymap('n', '<C-w>', ':quit<CR>')
keymap('i', '<C-w>', '<Esc>:quit<CR>')
keymap('v', '<C-w>', '<Esc>:quit<CR>')
keymap('n', '<C-s>', ':write<CR>')
keymap('i', '<C-s>', '<Esc>:write<CR>')
keymap('v', '<C-s>', '<Esc>:write<CR>')

keymap('n', '<Tab>', ':tabnext<CR>')
keymap('n', '<S-Tab>', ':tabprev<CR>')

-- Text Manipulation
keymap('v', '<Tab>', '>')
keymap('v', '<S-Tab>', '<')

keymap('n', '<Del>', '"_x')
keymap('i', '<Del>', '<C-O>"_x')
keymap('v', '<Del>', '"_x')

keymap('n', '<C-x>', 'dd')
keymap('i', '<C-x>', '<C-O>dd')
keymap('v', '<C-x>', 'd')
keymap('n', '<C-c>', 'yy')
keymap('i', '<C-c>', '<C-O>yy')
keymap('v', '<C-c>', 'y')
keymap('n', '<C-v>', 'p')
keymap('i', '<C-v>', '<C-O>p')
keymap('v', '<C-v>', 'p')

keymap('n', '<C-a>', 'ggVG')
keymap('i', '<C-a>', '<Esc>ggVG')
keymap('v', '<C-a>', '<Esc>ggVG')

keymap('n', '<C-z>', ':undo<CR>')
keymap('i', '<C-z>', '<Esc>:undo<CR>')
keymap('v', '<C-z>', '<Esc>:undo<CR>')
keymap('n', '<C-y>', ':redo<CR>')
keymap('i', '<C-y>', '<Esc>:redo<CR>')
keymap('v', '<C-y>', '<Esc>:redo<CR>')

-- Text Selection
keymap('v', '<A-S-Up>', '<Up>')
keymap('v', '<A-S-Down>', '<Down>')
keymap('n', '<A-S-Up>', 'V<Up>')
keymap('n', '<A-S-Down>', 'V<Down>')
keymap('i', '<A-S-Up>', '<Esc>V<Up>')
keymap('i', '<A-S-Down>', '<Esc>V<Down>')
keymap('v', '<S-Up>', '<Up>')
keymap('v', '<S-Down>', '<Down>')
keymap('v', '<S-Left>', '<Left>')
keymap('v', '<S-Right>', '<Right>')
keymap('n', '<S-Up>', 'v<Up>')
keymap('n', '<S-Down>', 'v<Down>')
keymap('n', '<S-Left>', 'v<Left>')
keymap('n', '<S-Right>', 'v<Right>')
keymap('i', '<S-Up>', '<Esc>v<Up>')
keymap('i', '<S-Down>', '<Esc>v<Down>')
keymap('i', '<S-Left>', '<Esc>v<Left>')
keymap('i', '<S-Right>', '<Esc>v<Right>')
