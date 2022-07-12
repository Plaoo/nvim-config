local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local cmd = vim.cmd
local g = vim.g         				-- global variables

g.mapleader = " "             -- change leader to a space
--g.mapleader = "<Space>"
--g.maplocalleader = "<Space>"
map('n', '<C-b>',       ':Buffers<CR>', default_opts)
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
map('n', '<F4>',        ':GoRun %<CR>', default_opts)
--map('n', '<Leader>cc',  ':call Generate_comments() <CR>', default_opts)
map('n', '<C-l>',       ':bnext<CR>', default_opts)
map('n', '<C-h>',       ':bprev<CR>', default_opts)
map('n', '<C-d>',       ':bd<CR>', default_opts)
map('n', '<C-l>',       ':bnext<CR>', default_opts)
map('n', '<C-h>',       ':bprev<CR>', default_opts)
map('n', '<F5>',	':COQnow<CR>', default_opts)
map('n', '<F2>',	':SymbolsOutline<CR>', default_opts)

--Telescope
--map('n', '<Leader>pp',  ':Telescope file_browser path=%:p:h<CR>', default_opts)
map('n', '<Leader>pp',  ':NvimTreeOpen<CR>', default_opts)
map('n', '<Leader>ll',  ':Telescope find_files hidden=true<CR>', default_opts)
map('n', '<Leader>ff',  ':Telescope live_grep<CR>', default_opts)
map('n', '<Leader>ee',  ':Telescope diagnostics<CR>', default_opts)
map('n', '<Leader>nn',  ':NvimTreeToggle<CR>', default_opts)
map('n', '<Leader>bb',  ':Telescope buffers<CR>', default_opts)
map('n', '<Leader>bm',  ':Telescope vim_bookmarks all<CR>', default_opts)
map('n', '<Leader>bc',  ':Telescope vim_bookmarks current_file<CR>', default_opts)

