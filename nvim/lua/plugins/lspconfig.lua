local capabilities = require('cmp_nvim_lsp').default_capabilities()
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
