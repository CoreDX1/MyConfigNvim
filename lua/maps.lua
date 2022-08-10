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

--Neo
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")
