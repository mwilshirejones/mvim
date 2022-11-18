local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local lspconfig = require('lspconfig')

lspconfig.tsserver.setup {
  capabilities = capabilities
}
lspconfig.eslint.setup {
  capabilities = capabilities
}
lspconfig.cssls.setup {
  capabilities = capabilities
}
lspconfig.html.setup {
  capabilities = capabilities
}
lspconfig.graphql.setup {
  capabilities = capabilities
}
