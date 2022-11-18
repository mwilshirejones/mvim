require('nvim-treesitter.configs').setup {
  ensure_installed = {
    'css',
    'html',
    'dockerfile',
    'graphql',
    'javascript',
    'json',
    'lua',
    'markdown',
    'ruby',
    'scss',
    'typescript',
  },
  highlight = { -- enable highlighting
    enable = true,
  },
  indent = {
    enable = true, -- default is disabled anyways
  },
  context_commentstring = {
    enable = true,
  },
}
