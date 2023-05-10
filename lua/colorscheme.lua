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
        conditionals = {},
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
            red = "#d20f39",
            blue = "#d2a8f2",
            surface2 = "#9f9f9f",
            surface1 = "#777777",
            surface0 = "#272727",
            mauve = "#ff7b72",
            teal = "#7287fd",
            base = "#272727",
            mantle = "#000000",
            crust = "#ffffff",
            green = "#a5d6f4",
            subtext1 = "#00ff00",
            subtext0 = "#0000ff",
            overlay2 = "#ffffff",
            overlay1 = "#0000ff",
            overlay0 = "#888888",
            lavender = "#ffffff",
            yellow = "#ff7b72",
            peach = "#d2a8ff",  -- "#7287fd", -- "#d2a8ff",
            sky = "#df4a16",
        },
    },

    -- custom_highlights = function(colors)
    --     return {
    --         Comment = { fg = "#ffffff" },
    --     }
    -- end

    -- custom_highlights = {
    -- },
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
