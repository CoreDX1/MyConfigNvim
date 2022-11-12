vim.g.mapleader = " "
local map = vim.api.nvim_set_keymap
local set = vim.keymap.set

map("n", "<C-h>", "<C-w>h", { noremap = true, silent = false })
map("n", "<C-l>", "<C-w>l", { noremap = true, silent = false })
map("n", "<C-j>", "<C-w>j", { noremap = true, silent = false })
map("n", "<C-k>", "<C-w>k", { noremap = true, silent = false })

map("i", "jk", "<ESC>", { noremap = true, silent = false })
map("i", "kj", "<ESC>", { noremap = true, silent = false })

map("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

--Htop
--
set("n", "f", "<cmd>HopChar1CurrentLineAC<CR>")
set("n", "F", "<cmd>HopChar1CurrentLineBC<CR>")
set("n", "s", "<cmd>HopChar2AC<CR>")
set("n", "S", "<cmd>HopChar2BC<CR>")
set("n", "<leader>s", "<cmd>HopLineStartAC<CR>")
set("n", "<leader>S", "<cmd>HopLineStartBC<CR>")

--Buffer
--
set("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>")
set("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>")

--smart Cursor Moved

set("n", "<C-h>", "<cmd>SmartCursorMoveLeft<CR>")
set("n", "<C-j>", "<cmd>SmartCursorMoveDown<CR>")
set("n", "<C-k>", "<cmd>SmartCursorMoveUp<CR>")
set("n", "<C-l>", "<cmd>SmartCursorMoveRight<CR>")

-- Smart Resize Moved

set("n", "<A-h>", "<cmd>SmartResizeLeft<CR>")
set("n", "<A-j>", "<cmd>SmartCursorMoveDown<CR>")
set("n", "<A-k>", "<cmd>SmartCursorMoveUp<CR>")
set("n", "<A-l>", "<cmd>SmartResizeRight<CR>")
