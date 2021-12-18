local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local cmd = vim.cmd

--vim.g.mapleader = " "
map('n', '<C-b>',       ':Buffers<CR>', default_opts)
map('n', '<Leader>ff',  ':Ag ', default_opts)
map('n', '<Leader>gb',  ':Git blame<CR>', default_opts)
map('n', '<leader>gg',  ':Neogit<CR>', default_opts)
map('n', "<Leader>q'",  "ciw''<Esc>P", default_opts)
map('n', '<Leader>q"',  'ciw""<Esc>P', default_opts)
map('n', '<Leader>q(',  'ciw()<Esc>P', default_opts)
map('n', '<Leader>q{',  'ciw{}<Esc>P', default_opts)
map('n', '<Leader>q[',  'ciw[]<Esc>P', default_opts)
map('n', '<Leader>cc',  ':call Generate_comments() <CR>', default_opts)
map('n', '<Leader>ii',  ':e ~/.config/nvim/ <CR>', default_opts)
map('n', '<Leader>bf',  ':Black<CR>', default_opts)
map('n', '<Leader>ss',  ':w<CR>', default_opts)
map('n', '<Leader>nn',  ':NvimTreeOpen<CR>', default_opts)
map('n', '<Leader>pp',  ':NvimTreeFindFile<CR>', default_opts)
map('n', '<Leader>ll',  ':Files<CR>', default_opts)
map('n', '<C-l>',       ':bnext<CR>', default_opts)
map('n', '<C-h>',       ':bprev<CR>', default_opts)
map('n', '<C-d>',       ':bd<CR>', default_opts)
map('n', '<C-l>',       ':bnext<CR>', default_opts)
map('n', '<C-h>',       ':bprev<CR>', default_opts)
map('n', '<F2>',	':Vista<CR>', default_opts)

-- vim.cmd([[


-- nnoremap <C-b>       :Buffers<CR>
-- nnoremap <Leader>ff  :Ag 
-- nnoremap <Leader>gb  :Git blame<CR>
-- nnoremap <Leader>gg  :Neogit<CR>
-- nnoremap <Leader>q'  ciw''<Esc>P
-- nnoremap <Leader>q"  ciw""<Esc>P
-- nnoremap <Leader>q(  ciw()<Esc>P
-- nnoremap <Leader>q{  ciw{}<Esc>P
-- nnoremap <Leader>q[  ciw[]<Esc>P
-- nnoremap <Leader>cc  :call Generate_comments() <CR>
-- nnoremap <Leader>ii  :e ~/.config/nvim/ <CR>
-- nnoremap <Leader>bf  :Black<CR>
-- nnoremap <Leader>ss  :w<CR>
-- nnoremap <C-p>	     :MarkdownPreview<CR>

-- nnoremap <Leader>nn  :NERDTreeToggle<CR>
-- nnoremap <Leader>pp  :NERDTreeFind<CR>
-- nnoremap <Leader>pp  :NERDTreeFind<CR>
-- nnoremap <Leader>n   :NERDTree
-- nnoremap <Leader>ll  :Files<CR>
-- ""Dir lavoro
-- "nnoremap <Leader>nl   :NERDTree $HOME/lavoro/<CR>

-- nnoremap <C-d>	      :bd<CR>
-- "remove trailing whitespaces
-- nnoremap <F8>	     :,%s/\s\+$//e
-- " tagbar
-- nnoremap <F2>	     :TagbarToggle<CR>
-- "tabs
-- nnoremap <C-l>	     :bnext<CR>
-- nnoremap <C-h>	     :bprev<CR>


-- """ Functions
-- function! Generate_comments()
--     let snippet = [
-- 	  \ '"""Returns a list containing :class:`bluepy.btle.Characteristic`',
--           \ 'objects for the peripheral. If no arguments are given, will return all',
--           \ 'characteristics. If startHnd and/or endHnd are given, the list is',
--           \ 'restricted to characteristics whose handles are within the given range.',
-- 	  \ '',
--           \ ':param startHnd: Start index, defaults to 1',
--           \ ':type startHnd: int, optional',
--           \ ':param endHnd: End index, defaults to 0xFFFF',
--           \ ':type endHnd: int, optional',
--           \ ':param uuids: a list of UUID strings, defaults to None',
--           \ ':type uuids: list, optional',
--           \ ':return: List of returned :class:`bluepy.btle.Characteristic` objects',
--           \ ':rtype: list',
--           \ '"""',]
--     call append(line('.'), snippet)
-- endfunction

-- """ FZF window
-- """ general

-- let g:fzf_layout = { 'window': 'call CreateCenteredFloatingWindow()' }
-- let $FZF_DEFAULT_OPTS="--reverse "

-- " use rg by default
-- if executable('rg')
--   let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
--   set grepprg=rg\ --vimgrep
-- endif

-- function! CreateCenteredFloatingWindow()
--     let width = min([&columns - 4, max([80, &columns - 20])])
--     let height = min([&lines - 4, max([20, &lines - 10])])
--     let top = ((&lines - height) / 2) - 1
--     let left = (&columns - width) / 2
--     let opts = {'relative': 'editor', 'row': top, 'col': left, 'width': width, 'height': height, 'style': 'minimal'}

--     let top = "╭" . repeat("─", width - 2) . "╮"
--     let mid = "│" . repeat(" ", width - 2) . "│"
--     let bot = "╰" . repeat("─", width - 2) . "╯"
--     let lines = [top] + repeat([mid], height - 2) + [bot]
--     let s:buf = nvim_create_buf(v:false, v:true)
--     call nvim_buf_set_lines(s:buf, 0, -1, v:true, lines)
--     call nvim_open_win(s:buf, v:true, opts)
--     set winhl=Normal:Floating
--     let opts.row += 1
--     let opts.height -= 2
--     let opts.col += 2
--     let opts.width -= 4
--     call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
--     au BufWipeout <buffer> exe 'bw '.s:buf
-- endfunction
-- ]])
