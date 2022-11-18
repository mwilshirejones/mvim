local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

----------------------------------------
-- Stuffs:
----------------------------------------
map('n', '<C-h', '<C-W>h', { noremap = true })
map('n', '<C-j', '<C-W>j', { noremap = true })
map('n', '<C-k', '<C-W>k', { noremap = true })
map('n', '<C-l', '<C-W>l', { noremap = true })

----------------------------------------
-- Telescope:
----------------------------------------
map('n', '<Leader>ff', '<cmd>Telescope find_files<cr>', { noremap = true })
map('n', '<Leader>fg', '<cmd>Telescope live_grep<cr>', { noremap = true })
map('n', '<Leader>fb', '<cmd>Telescope buffers<cr>', { noremap = true })
map('n', '<Leader>fh', '<cmd>Telescope help_tags<cr>', { noremap = true })

----------------------------------------
-- LSP:
----------------------------------------
map('n', 'gd', ':lua vim.lsp.buf.definition()<cr>', default_opts)
map('n', 'gD', ':lua vim.lsp.buf.declaration()<cr>', default_opts)
map('n', 'gi', ':lua vim.lsp.buf.implementation()<cr>', default_opts)
map('n', 'gw', ':lua vim.lsp.buf.document_symbol()<cr>', default_opts)
-- map('n', 'gw', ':lua vim.lsp.buf.workspace_symbol()<cr>', default_opts)
map('n', 'gr', ':lua vim.lsp.buf.references()<cr>', default_opts)
-- map('n', 'gt', ':lua vim.lsp.buf.type_definition()<cr>', default_opts)
map('n', 'K', ':lua vim.lsp.buf.hover()<cr>', default_opts)
map('n', '<C-k>', ':lua vim.lsp.buf.signature_help()<cr>', default_opts)
map('n', '<leader>af', ':lua vim.lsp.buf.code_action()<cr>', default_opts)
map('n', '<leader>rn', ':lua vim.lsp.buf.rename()<cr>', default_opts)

----------------------------------------
-- Nvim Tree:
----------------------------------------
map('n', '<Leader>e', '<cmd>NvimTreeToggle<cr>', default_opts)
map('n', '<Leader>f', '<cmd>NvimTreeFindFile<cr>', default_opts)
