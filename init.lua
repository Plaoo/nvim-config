require('plug')
require('settings')
require('mapping')
require('plugins/nvim-tree')
-- TO FIX
-- require('plugins/vista')
require('plugins/lualine')
require('plugins/lspconfig')
require('plugins/zig')
require('plugins/fzf')

require'lspconfig'.pyright.setup{}
require'lspconfig'.zls.setup{}
require'lspconfig'.jsonls.setup{}
require'lspconfig'.clangd.setup{}
