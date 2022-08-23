vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap
local set = vim.keymap.set
map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})

map('i', 'jk', '<ESC>', {noremap = true, silent = false})
map('i', 'kj', '<ESC>', {noremap = true, silent = false})

map('n', '<leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

--Buffer
set("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>")
set("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>")
--smart
set('n', '<C-h>', require('smart-splits').move_cursor_left)
set('n', '<C-j>', require('smart-splits').move_cursor_down)
set('n', '<C-k>', require('smart-splits').move_cursor_up)
set('n', '<C-l>', require('smart-splits').move_cursor_right)
set('n', '<A-h>', require('smart-splits').resize_left)
set('n', '<A-j>', require('smart-splits').resize_down)
set('n', '<A-k>', require('smart-splits').resize_up)
set('n', '<A-l>', require('smart-splits').resize_right)

