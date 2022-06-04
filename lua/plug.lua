local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug('dracula/vim', {as = 'dracula'})
Plug('tpope/vim-fugitive')
Plug('TimUntersberger/neogit')
Plug('airblade/vim-gitgutter')
Plug('Yggdroot/indentLine')
Plug('psf/black')
Plug('simeji/winresizer') --Ctrl + e e poi hjkl
Plug('ap/vim-buftabline')
Plug('terryma/vim-multiple-cursors')
Plug('hoob3rt/lualine.nvim')
Plug('MattesGroeger/vim-bookmarks')
Plug('junegunn/fzf', {
	['do'] = function()
	  vim.call('fzf#install')
	end
      })
Plug('junegunn/fzf.vim')
Plug('liuchengxu/vista.vim')
--Plug('kyazdani42/nvim-tree.lua')
Plug('neovim/nvim-lspconfig')
Plug('williamboman/nvim-lsp-installer')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')
Plug('ms-jpq/coq_nvim', {branch = 'coq'})
Plug('ms-jpq/coq.artifacts', {branch='artifacts'})
Plug('ms-jpq/coq.thirdparty', {branch= '3p'})
Plug('hoob3rt/lualine.nvim')
Plug('nvim-treesitter/nvim-treesitter')
Plug('ziglang/zig.vim')
Plug('ryanoasis/vim-devicons')
Plug('kyazdani42/nvim-web-devicons')
Plug ('neovim/nvim-lspconfig')
Plug ('glepnir/lspsaga.nvim')
Plug ('simrat39/symbols-outline.nvim')
--Plug ('vimwiki/vimwiki')
Plug 'nvim-lua/plenary.nvim'
Plug('fatih/vim-go')
Plug('kdheepak/lazygit.nvim')

-- Telescope and plugins
Plug ('nvim-telescope/telescope.nvim')
Plug ('nvim-telescope/telescope-file-browser.nvim')
Plug ('nvim-telescope/telescope-fzf-native.nvim')
--Plug ('tom-anders/telescope-vim-bookmarks.nvim')

vim.call('plug#end')
