require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "sumneko_lua", "quick_lint_js", "tsserver", "cssls" },
}

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
  
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").sumneko_lua.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require("lspconfig").quick_lint_js.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require("lspconfig").tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require("lspconfig").cssls.setup {
  on_attach = on_attach,
  capabilities = capabilities
}
