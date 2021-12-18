require('plug')
require('settings')
require('mapping')
require('plugins/nvim-tree')
require('plugins/vista')
require('plugins/lualine')
require('plugins/lspconfig')

require'lspconfig'.pyright.setup{}
