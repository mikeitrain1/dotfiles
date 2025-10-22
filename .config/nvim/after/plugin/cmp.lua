local on_attach = function(_, bufnr)
  local bufmap = function(keys, func)
    vim.keymap.set('n', keys, func, { buffer = bufnr })
  end

  bufmap('<leader>r', vim.lsp.buf.rename)
  bufmap('<leader>a', vim.lsp.buf.code_action)

  bufmap('gd', vim.lsp.buf.definition)
  bufmap('gD', vim.lsp.buf.declaration)
  bufmap('gI', vim.lsp.buf.implementation)
  bufmap('<leader>D', vim.lsp.buf.type_definition)

  bufmap('gr', require('telescope.builtin').lsp_references)
  bufmap('<leader>s', require('telescope.builtin').lsp_document_symbols)
  bufmap('<leader>S', require('telescope.builtin').lsp_dynamic_workspace_symbols)

  bufmap('K', vim.lsp.buf.hover)

  vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
    vim.lsp.buf.format()
  end, {})
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- Set global capabilities for all LSP servers
vim.lsp.config("*", {
  capabilities = capabilities,
})

-- Set global on_attach for all LSP servers
vim.lsp.config("*", {
  on_attach = on_attach,
})

-- Example: a server you want outside of mason
vim.lsp.enable("gdscript")

-- Mason setup
require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = { "lua_ls", "jdtls", "pyright", "clangd" }, -- add more servers you want auto-installed
}

-- Enable all Mason-installed servers
vim.lsp.enable(require("mason-lspconfig").get_installed_servers())

-- Lua LS with neodev (this will override the global settings for lua_ls specifically)
require("neodev").setup()
