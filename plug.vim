" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"  autocmd VimEnter * PlugInstall
"  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')
    "VimWiki
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
"    Plug 'vimwiki/vimwiki'
    Plug 'Yggdroot/indentLine'
    Plug 'tpope/vim-fugitive'
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'psf/black'
    Plug 'MattesGroeger/vim-bookmarks'
    Plug 'tanvirtin/monokai.nvim'
    Plug 'TimUntersberger/neogit'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'puremourning/vimspector'
    Plug 'simeji/winresizer' "Ctrl + e e poi hjkl
    Plug 'Pocco81/Catppuccino.nvim'
    Plug 'ap/vim-buftabline'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'mfussenegger/nvim-dap'
    Plug 'neovim/nvim-lspconfig'
    Plug 'kabouzeid/nvim-lspinstall'
    "Plug 'hrsh7th/nvim-compe'
    Plug 'glepnir/lspsaga.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
    Plug 'projekt0n/github-nvim-theme'
    "Plug 'nvim-lua/completion-nvim'
    "Plug 'hrsh7th/nvim-cmp'
    "Completition
    Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
    Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
    Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
    Plug 'preservim/nerdtree'
    Plug 'hoob3rt/lualine.nvim'
    Plug 'jacoborus/tender.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'sainnhe/sonokai'
    Plug 'ryanoasis/vim-devicons'
    Plug 'airblade/vim-gitgutter'
    Plug 'jiangmiao/auto-pairs'
    Plug 'preservim/tagbar'
call plug#end()

"lua require("coq")
