local status, packer = pcall(require, "packer")
if not status then
    print("Packer is not installed")
    return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
    use("wbthomason/packer.nvim")
    use("nvim-lua/plenary.nvim") -- Common utilities
    use("onsails/lspkind-nvim") -- vscode-like pictograms
    use("hrsh7th/cmp-buffer") -- nvim-cmp source for buffer words
    use("hrsh7th/cmp-nvim-lsp") -- nvim-cmp source for neovim's built-in LSP
    use("hrsh7th/nvim-cmp") -- Completion
    use("neovim/nvim-lspconfig") -- LSP
    use("jose-elias-alvarez/null-ls.nvim") -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")
    use("glepnir/lspsaga.nvim") -- LSP UIs
    use("L3MON4D3/LuaSnip")
    use({
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    })
    use("kyazdani42/nvim-web-devicons") -- File icons
    use("nvim-telescope/telescope.nvim")
    use("nvim-telescope/telescope-file-browser.nvim")
    use("windwp/nvim-autopairs")
    use("windwp/nvim-ts-autotag")
    use("norcalli/nvim-colorizer.lua")
    use({
        "iamcco/markdown-preview.nvim",
        run = function()
            vim.fn["mkdp#util#install"]()
        end,
    })
    use("akinsho/nvim-bufferline.lua")
    use("lewis6991/gitsigns.nvim")
    use("dinhhuy258/git.nvim") -- For git blame & browse
    use("kyazdani42/nvim-tree.lua")
    -- use({ "tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp" })
    use("pangloss/vim-javascript")
    use("leafgarland/typescript-vim")
    use("peitalin/vim-jsx-typescript")
    --Surround
    use({
        "kylechui/nvim-surround",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end,
    })
    --Hop
    use({
        "phaazon/hop.nvim",
        branch = "v2", -- optional but strongly recommended
        config = function()
            -- you can configure Hop the way you like here; see :h hop-config
            require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
        end,
    })

    use("simrat39/symbols-outline.nvim")
    use("mrjones2014/smart-splits.nvim")
    use({ "akinsho/bufferline.nvim", tag = "v2.*" })
    use({
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup({
                pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
            })
        end,
    })
    use("JoosepAlviste/nvim-ts-context-commentstring")
    -- WhichKey
    use({
        "folke/which-key.nvim",
    })
    use({ "akinsho/toggleterm.nvim", tag = "v2.*" })

    -- Http Rest
    use("rest-nvim/rest.nvim")
    use('Tsuzat/NeoSolarized.nvim')
    -- GitHub Copilod
    use("github/copilot.vim")
end)
