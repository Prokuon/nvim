-- local colorscheme = "tokyonight"
-- local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
-- if not status_ok then
--  vim.notify("colorscheme " .. colorscheme .. " 没有找到！")
--  return
-- end

-- Lua
-- vim.cmd[[colorscheme tokyonight]]

-- Lua
-- Lua
-- Lua
-- vim.cmd.colorscheme "catppuccin"
-- setup must be called before loading
-- vim.cmd.colorscheme "catppuccin"
-- Lua
----------------------------------------
--tokyonight
--vim.cmd[[colorscheme tokyonight]]
----------------------------------------
--onedark
-- Lua
-- require('onedark').setup  {
--     -- Main options --
--     style = 'warmer', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
--     transparent = false,  -- Show/hide background
--     term_colors = true, -- Change terminal color as per the selected theme style
--     ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
--     cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

--     -- toggle theme style ---
--     toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
--     toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

--     -- Change code style ---
--     -- Options are italic, bold, underline, none
--     -- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
--     code_style = {
--         comments = 'italic',
--         keywords = 'none',
--         functions = 'none',
--         strings = 'none',
--         variables = 'none'
--     },

--     -- Lualine options --
--     lualine = {
--         transparent = false, -- lualine center bar transparency
--     },

--     -- Custom Highlights --
--     colors = {}, -- Override default colors
--     highlights = {}, -- Override highlight groups

--     -- Plugins Config --
--     diagnostics = {
--         darker = true, -- darker colors for diagnostic
--         undercurl = true,   -- use undercurl instead of underline for diagnostics
--         background = true,    -- use background color for virtual text
--     },
-- }
-- require('onedark').load()
-----------------------------------
--catppuccin
require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = true,
    show_end_of_buffer = false, -- show the '~' characters after the end of buffers
    term_colors = false,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {
        all = {
            text = "#ffffff",
        },
        latte = {
            base = "#ff0000",
            mantle = "#242424",
            crust = "#474747",
        },
        frappe = {},
        macchiato = {},
        mocha = {
            blue = "#df4a16",
            surface2 = "#9f9f9f",
            surface1 = "#777777",
            surface0 = "#272727",
            base = "#272727",
            mantle = "#000000",
            crust = "#ffffff",
            -- green = "#df4a16"
            subtext1 = "#00ff00",
            subtext0 = "#0000ff",
            overlay2 = "#ffffff",
            overlay1 = "#0000ff",
            overlay0 = "#ffffff",
            lavender = "#ffffff"
        },
    },
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = false,
        mini = false,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"
