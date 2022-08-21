local M = {}
local map = vim.keymap.set
local cmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- Remap space as leader key
map("", "<Space>", "<Nop>")
vim.g.mapleader = " "

--General
map("n", "<leader>w", "<cmd>w<CR>")
map("n", "<leader>q", "<cmd>q<CR>")
map("n", "<leader>l", "<cmd>luafile %<CR>")

--Lenguajes
map("n", "<leader>js", "<cmd>! node %<CR>")

--Packer
map("n", "<leader>ps", "<cmd>PackerSync<CR>")

--telescope
map("n", "<leader>fz", "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>", { noremap = true })
map('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<CR>", { noremap = true })
map('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<CR>", { noremap = true })
map('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<CR>", { noremap = true })

--Hop
map("n", "f", "<cmd>HopChar1CurrentLineAC<CR>")
map("n", "F", "<cmd>HopChar1CurrentLineBC<CR>")
map("n", "s", "<cmd>HopChar2AC<CR>")
map("n", "S", "<cmd>HopChar2BC<CR>")
map("n", "<leader>s", "<cmd>HopLineStartAC<CR>")
map("n", "<leader>S", "<cmd>HopLineStartBC<CR>")

--Smart splits
map('n', '<C-h>', require('smart-splits').move_cursor_left)
map('n', '<C-j>', require('smart-splits').move_cursor_down)
map('n', '<C-k>', require('smart-splits').move_cursor_up)
map('n', '<C-l>', require('smart-splits').move_cursor_right)
map('n', '<A-h>', require('smart-splits').resize_left)
map('n', '<A-j>', require('smart-splits').resize_down)
map('n', '<A-k>', require('smart-splits').resize_up)
map('n', '<A-l>', require('smart-splits').resize_right)

--Bufferline
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")
map("n", "<leader>x", "<cmd>BufferLinePickClose<CR>")
map("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>")
map("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>")
--Lspsaga
map('n', '<leader>gd', '<cmd>Lspsaga show_line_diagnostics<CR>')
