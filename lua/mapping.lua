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

map('n', '<Leader>cc',  ':call Generate_comments() <CR>', default_opts)
map('n', '<C-l>',       ':bnext<CR>', default_opts)
map('n', '<C-h>',       ':bprev<CR>', default_opts)
map('n', '<C-d>',       ':bd<CR>', default_opts)
map('n', '<C-l>',       ':bnext<CR>', default_opts)
map('n', '<C-h>',       ':bprev<CR>', default_opts)
map('n', '<F2>',	':Vista<CR>', default_opts)
map('n', '<F5>',	':COQnow<CR>', default_opts)

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
--
-- """ FZF window
-- """ general

