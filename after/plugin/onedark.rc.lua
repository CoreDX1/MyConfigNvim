require("onedarkpro").setup({
    dark_theme = "onedark_vivid", -- The default dark theme
    light_theme = "onedark", -- The default light theme
    colors = {}, -- Override default colors by specifying colors for 'onelight' or 'onedark' themes
    highlights = {
        Comment = { fg = "#ff0000", bg = "" }
    }, -- Override default highlight groups
    ft_highlights = {}, -- Override default highlight groups for specific filetypes
    plugins = { -- Override which plugin highlight groups are loaded
        -- See the [Supported Plugins](#electric_plug-supported-plugins) section for a list of supported plugins
    },
    styles = { -- Choose from "bold,italic,underline"
        strings = "NONE", -- Style that is applied to strings.
        comments = "NONE", -- Style that is applied to comments
        keywords = "NONE", -- Style that is applied to keywords
        functions = "NONE", -- Style that is applied to functions
        variables = "NONE", -- Style that is applied to variables
        virtual_text = "NONE", -- Style that is applied to virtual text
    },
    color = {
          cursorline = "#FF0000" -- This is optional. The default cursorline color is based on the background
    },
    options = {
        bold = false, -- Use the colorscheme's opinionated bold styles?
        italic = false, -- Use the colorscheme's opinionated italic styles?
        underline = false, -- Use the colorscheme's opinionated underline styles?
        undercurl = false, -- Use the colorscheme's opinionated undercurl styles?
        cursorline = false, -- Use cursorline highlighting?
        transparency = false, -- Use a transparent background?
        terminal_colors = false, -- Use the colorscheme's colors for Neovim's :terminal?
        window_unfocused_color = false, -- When the window is out of focus, change the normal background?
        color = true
    }
})
