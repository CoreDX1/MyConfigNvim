local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
	use("wbthomason/packer.nvim") -- Packer can manage itself
	use("nvim-lua/plenary.nvim") -- Common utilities
	use("onsails/lspkind-nvim") -- vscode-like pictograms
	use("hrsh7th/cmp-buffer") -- nvim-cmp source for buffer words
	use("hrsh7th/cmp-nvim-lsp") -- nvim-cmp source for neovim's built-in LSP
	use("hrsh7th/nvim-cmp") -- Completion
	use("neovim/nvim-lspconfig") -- LSP
	use("jose-elias-alvarez/null-ls.nvim") -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
	use("williamboman/mason.nvim") -- A simple, fast, and reliable build system for Neovim
	use("williamboman/mason-lspconfig.nvim") -- A simple, fast, and reliable build system for Neovim
	use("glepnir/lspsaga.nvim") -- LSP UIs
	use("L3MON4D3/LuaSnip") -- Snippets plugin
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	}) -- Treesitter
	use("kyazdani42/nvim-web-devicons") -- File icons 
	use("nvim-telescope/telescope.nvim") -- Fuzzy finder
	use("nvim-telescope/telescope-file-browser.nvim")
	use("windwp/nvim-ts-autotag") -- Automatically close and reopen HTML tags
	use("norcalli/nvim-colorizer.lua") -- Color highlighter
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	}) -- Markdown preview
	-- use("akinsho/nvim-bufferline.lua")
	use("lewis6991/gitsigns.nvim") -- Git signs
	use("dinhhuy258/git.nvim") -- For git blame & browse
	use("kyazdani42/nvim-tree.lua") -- File explorer
	-- use({ "tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp" })
	use("pangloss/vim-javascript") -- Javascript syntax
	use("leafgarland/typescript-vim") -- Typescript syntax
	use("peitalin/vim-jsx-typescript") -- JSX syntax
	--Surround
	use({
		"kylechui/nvim-surround",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	}) -- Surround
	--Hop
	use({
		"phaazon/hop.nvim",
		branch = "v2", -- optional but strongly recommended
		config = function()
			-- you can configure Hop the way you like here; see :h hop-config
			require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
		end,
	}) -- Hop for easy cursor movement

	use("simrat39/symbols-outline.nvim") -- Symbols outline
	use("mrjones2014/smart-splits.nvim") -- Smart splits for neovim
    use({ "akinsho/bufferline.nvim", tag = "v2.*" }) -- Bufferline
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup({
				pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
			})
		end,
	}) -- Comment
	use("JoosepAlviste/nvim-ts-context-commentstring")
	-- WhichKey
	use({
		"folke/which-key.nvim",
	}) -- WhichKey for keybindings menu
	use({ "akinsho/toggleterm.nvim", tag = "v2.*" }) -- Terminal toggle

	-- Http Rest
	use("rest-nvim/rest.nvim") -- Http Rest
	use("Tsuzat/NeoSolarized.nvim") -- Theme NeoSolarized
	-- GitHub Copilod
	use("github/copilot.vim") -- GitHub Copilot
	-- DateBase
	use({
		"kristijanhusak/vim-dadbod-ui",
		requires = { "kristijanhusak/vim-dadbod-completion", "tpope/vim-dadbod", "tpope/vim-dotenv" },
	}) -- DateBase UI for vim-dadbod
	use("j-morano/buffer_manager.nvim")
	use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }) -- DAP UI
	use({ "m4xshen/autoclose.nvim" }) -- Auto close
end)
