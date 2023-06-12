local status, vimtex = pcall(require, "vimtex")
if not status then
  vim.notify("没有找到 vimtex")
  return
end

vimtex.setup({
    -- opt = true,
    -- config = function ()
    --     vim.g.vimtex_view_general_viewer = 'okular'
    --     vim.g.vimtex_compiler_latexmk_engines = {
    --         _ = '-xelatex'
    --     }
    --     vim.g.tex_comment_nospell = 1
    --     vim.g.vimtex_compiler_progname = 'nvr'
    --     vim.g.vimtex_view_general_options = [[--unique file:@pdf\#src:@line@tex]]
    --     vim.g.vimtex_view_general_options_latexmk = '--unique'
    -- end,
    -- ft = 'tex'
})
