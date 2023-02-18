local status, ident_blankline = pcall(require, "indent_blankline")
if not status then
  vim.notify("没有找到 indent_blankline")
  return
end
vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#61AFEF gui=nocombine]]

-- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#1a1a1a gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent2 guifg=#121212 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent3 guifg=#0a0a0a gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent4 guifg=#000000 gui=nocombine]]

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
-- vim.opt.listchars:append "eol:↴"

ident_blankline.setup({
    -- 空行占位
    space_char_blankline = " ",
    -- 用 treesitter 判断上下文
    show_current_context = true,
    show_current_context_start = true,
    context_patterns = {
        "class",
        "function",
        "method",
        "element",
        "^if",
        "^while",
        "^for",
        "^object",
        "^table",
        "block",
        "arguments",
    },
    -- :echo &filetype
    filetype_exclude = {
        "dashboard",
        "packer",
        "terminal",
        "help",
        "log",
        "markdown",
        "TelescopePrompt",
        "lsp-installer",
        "lspinfo",
        "toggleterm",
    },
    -- 竖线样式
    -- char = '¦'
    -- char = '┆'
    -- char = '│'
    -- char = "⎸",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
    },

    -- space_char_highlight_list = {
    --     "IndentBlanklineIndent1",
    --     "IndentBlanklineIndent2",
    --     "IndentBlanklineIndent3",
    --     "IndentBlanklineIndent4",
    -- },

    -- show_trailing_blankline_indent = false,

    char = "▏",
})
