-- Next/Previous Buffer Keymaps
vim.keymap.set('n', '<Leader><Left>', ':bprevious<CR>', { silent = true })
vim.keymap.set('n', '<Leader><Right>', ':bnext<CR>', { silent = true })

-- Diagnostics Keymaps
vim.keymap.set('n', '<Leader><Up>', vim.diagnostic.goto_prev)
vim.keymap.set('n', '<Leader><Down>', vim.diagnostic.goto_next)
vim.keymap.set('n', '<Leader>?', vim.diagnostic.open_float)
vim.keymap.set('n', '<Leader>/', vim.diagnostic.setloclist)

-- LSP-specific setup
require('mason').setup({})
local mason_lspconfig = require('mason-lspconfig')
mason_lspconfig.setup({})
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
local servers = {
  lua_ls = {
    Lua = {
      telemetry = { enable = false }
    }
  }
}
-- LSP Keymaps
local on_attach = function(_, bufnr)
  local map = function(keys, func, desc)
    if desc then
      desc = 'LSP: ' .. desc
    end
    vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc, noremap=true })
  end
  map('<Leader>r', vim.lsp.buf.rename, '[R]ename Symbol')
  map('<Leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ctions')
  map('<Leader>f', function()
    vim.lsp.buf.format({ async = true })
  end, '[F]ormat Code')
  map('<Leader>gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
  map('<Leader>gr', vim.lsp.buf.references, '[G]oto [R]eferences')
  map('<Leader>gi', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
  map('<Leader>gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
  map('<Leader>gt', vim.lsp.buf.type_definition, '[G]oto [T]ype Definition')
  map('<Leader>d', vim.lsp.buf.hover, 'Hover [D]ocumentation')
  map('<Leader>sh', vim.lsp.buf.signature_help, '[S]ignature Help')
  map('<Leader>wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')
  map('<Leader>wr', vim.lsp.buf.remove_workspace_folder, '[W]orkspace [R]emove Folder')
  map('<Leader>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, '[W]orkspace [L]ist Folders')
end
mason_lspconfig.setup_handlers({
  function(server)
    require('lspconfig')[server].setup({
      capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities()),
      on_attach = on_attach,
      settings = servers[server]
    })
  end,
})
