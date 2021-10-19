source $HOME/.config/nvim/plug.vim

set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=~~ 	" Wrap-broken line prefix
set textwidth=80	" Line wrap (number of cols)
set showmatch	" Highlight matching brace
set visualbell	" Use visual bell (no beeping)
set number relativenumber
set tw=0
set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
"autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=None
set autoindent	" Auto-indent new lines
set shiftwidth=4	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab
let python_highlight_all=1
let g:fzf_buffers_jump = 1
filetype indent plugin on
syntax on
set ruler	" Show row and column ruler information
set cursorline
set backspace=indent,eol,start	" Backspace behaviour


""" NON RIMUOVERE!!
noremap <Space> <Nop>

""" Read maps
runtime ./maps.vim
" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

""" Vim Wiki
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
let vim_markdown_preview_github=0
let vim_markdown_preview_perl=0
let vim_markdown_preview_pandoc=1
let vim_markdown_preview_browser='firefox'
let vim_markdown_preview_use_xdg_open=1

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

let g:coq_settings = { 'auto_start': v:true }
" Theme
syntax enable
set termguicolors
colorscheme catppuccino
"runtime g:neosolarized_termtrans=1
"runtime ./colors/NeoSolarized.vim
"colorscheme NeoSolarized
"
hi Search guibg=DarkGrey guifg=Black
" require'lspconfig'.html.setup{}
" require'lspconfig'.jsonls.setup{}
" require'lspconfig'.gopls.setup{}
" require'lspconfig'.rust_analyzer.setup{}
" require'lspconfig'.hls.setup{}
" require'lspconfig'.clangd.setup{}


lua << EOF
require'lspconfig'.pyright.setup{}

EOF


