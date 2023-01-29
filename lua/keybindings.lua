vim.g.mapleader = " "
vim.g.maplocalleader = " "
local map = vim.api.nvim_set_keymap
-- 复用 opt 参数
local opt = {noremap = true, silent = true }
-- 取消 s 默认功能
map("n", "s", "", opt)
-- windows 分屏快捷键
map("n", "s;", ":vsp<CR>", opt)
map("n", "sv", ":sp<CR>", opt)
-- 关闭当前
map("n", "sq", "<C-w>c", opt)
-- 关闭其他
map("n", "so", "<C-w>o", opt)
-- Alt + 
-- hjkl  窗口之间跳转
map("n", "sh", "<C-w>h", opt)
map("n", "sj", "<C-w>j", opt)
map("n", "sk", "<C-w>k", opt)
map("n", "sl", "<C-w>l", opt)
-- 左右比例控制
map("n", "srh", ":vertical resize -4<CR>", opt)
map("n", "srl", ":vertical resize +4<CR>", opt)
map("n", "s,", ":vertical resize -20<CR>", opt)
map("n", "s.", ":vertical resize +20<CR>", opt)
-- 上下比例
map("n", "srj", ":resize +2<CR>", opt)
map("n", "srk", ":resize -2<CR>", opt)
map("n", "<C-Down>", ":resize +2<CR>", opt)
map("n", "<C-Up>", ":resize -2<CR>", opt)
-- 等比例
map("n", "s=", "<C-w>=", opt)

-- Terminal相关
map("n", "<leader>v", ":sp | terminal<CR>", opt)
map("n", "<leader>;", ":vsp | terminal<CR>", opt)
map("t", "<Esc>", "<C-\\><C-n>", opt)
map("t", "<A-h>", [[ <C-\><C-N><C-w>h ]], opt)
map("t", "<A-j>", [[ <C-\><C-N><C-w>j ]], opt)
map("t", "<A-k>", [[ <C-\><C-N><C-w>k ]], opt)
map("t", "<A-l>", [[ <C-\><C-N><C-w>l ]], opt)

-- visual模式下缩进代码
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)
-- 上下移动选中文本
map("v", "J", ":move '>+1<CR>gv-gv", opt)
map("v", "K", ":move '<-2<CR>gv-gv", opt)

-- 插件快捷键
local pluginKeys = {}
-- treesitter 折叠
map("n", "zz", ":foldclose<CR>", opt)
map("n", "Z", ":foldopen<CR>", opt)

-- nvim-tree
-- alt + m 键打开关闭tree
map("n", "<A-e>", ":NvimTreeToggle<CR>", opt)
-- map("n", "fe", ":NvimTreeToggle<CR>", opt)
-- 列表快捷键
pluginKeys.nvimTreeList = {
    -- 打开文件或文件夹
    { key = {"<CR>", "o", "<2-LeftMouse>"}, action = "edit" },
    -- 分屏打开文件
    { key = ";", action = "vsplit" },
    { key = "v", action = "split" },
    -- 显示隐藏文件
    { key = "i", action = "toggle_custom" }, -- 对应 filters 中的 custom (node_modules)
    { key = ".", action = "toggle_dotfiles" }, -- Hide (dotfiles)
    -- 文件操作
    { key = "<F5>", action = "refresh" },
    { key = "a", action = "create" },
    { key = "d", action = "remove" },
    { key = "r", action = "rename" },
    { key = "x", action = "cut" },
    { key = "c", action = "copy" },
    { key = "p", action = "paste" },
    { key = "o", action = "system_open" },
}

-- bufferline
-- 左右Tab切换
map("n", "th", ":BufferLineCyclePrev<CR>", opt)
map("n", "tl", ":BufferLineCycleNext<CR>", opt)
-- 关闭
--"moll/vim-bbye"
map("n", "tq", ":Bdelete!<CR>", opt)
map("n", "<leader>bl", ":BufferLineCloseRight<CR>", opt)
map("n", "<leader>bh", ":BufferLineCloseLeft<CR>", opt)
map("n", "<leader>bc", ":BufferLinePickClose<CR>", opt)

-- Telescope
-- 查找文件
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
-- 全局搜索
map("n", "<C-f>", ":Telescope live_grep<CR>", opt)

-- Telescope 列表中 插入模式快捷键
pluginKeys.telescopeList = {
    i = {
        -- 上下移动
        ["<C-j>"] = "move_selection_next",
        ["<C-k>"] = "move_selection_previous",
        ["<Down>"] = "move_selection_next",
        ["<Up>"] = "move_selection_previous",
        -- 历史记录
        ["<C-n>"] = "cycle_history_next",
        ["<C-p>"] = "cycle_history_prev",
        -- 关闭窗口
        ["<C-c>"] = "close",
        -- 预览窗口上下滚动
        ["<C-u>"] = "preview_scrolling_up",
        ["<C-d>"] = "preview_scrolling_down",
    },
}

-- nvim-cmp 自动补全
pluginKeys.cmp = function(cmp)
    return {
        -- 出现补全
        ["<A-.>"] = cmp.mapping(cmp.mapping.complete(), {"i", "c"}),
        -- 取消
        ["<A-,>"] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close()
        }),
        -- 上一个
        -- ["<C-k>"] = cmp.mapping.select_prev_item(),
        -- -- 下一个
        -- ["<C-j>"] = cmp.mapping.select_next_item(),
        -- -- 确认
        -- ["<CR>"] = cmp.mapping.confirm({
        --     select = true,
        --     behavior = cmp.ConfirmBehavior.Replace
        -- }),
        -- -- 如果窗口内容太多，可以滚动
        -- ["<C-u>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), {"i", "c"}),
        -- ["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(4), {"i", "c"}),
        -- 上一个
        ["<A-k>"] = cmp.mapping.select_prev_item(),
        -- 下一个
        ["<A-j>"] = cmp.mapping.select_next_item(),
        -- 确认
        ["<CR>"] = cmp.mapping.confirm({
            select = true,
            behavior = cmp.ConfirmBehavior.Replace
        }),
        -- 如果窗口内容太多，可以滚动
        ["<A-u>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), {"i", "c"}),
        ["<A-d>"] = cmp.mapping(cmp.mapping.scroll_docs(4), {"i", "c"}),
 --           -- 自定义代码段跳转到下一个参数
 --   ["<C-l>"] = cmp.mapping(function(_)
 --     if vim.fn["vsnip#available"](1) == 1 then
 --       feedkey("<Plug>(vsnip-expand-or-jump)", "")
 --     end
 --   end, {"i", "s"}),

--    -- 自定义代码段跳转到上一个参数
--    ["<C-h>"] = cmp.mapping(function()
--      if vim.fn["vsnip#jumpable"](-1) == 1 then
--        feedkey("<Plug>(vsnip-jump-prev)", "")
--      end
--    end, {"i", "s"}),

--    -- Super Tab
--    ["<Tab>"] = cmp.mapping(function(fallback)
--      if cmp.visible() then
--        cmp.select_next_item()
--      elseif vim.fn["vsnip#available"](1) == 1 then
--        feedkey("<Plug>(vsnip-expand-or-jump)", "")
--      elseif has_words_before() then
--        cmp.complete()
--      else
--        fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
--      end
--    end, {"i", "s"}),

--    ["<S-Tab>"] = cmp.mapping(function()
--      if cmp.visible() then
--        cmp.select_prev_item()
--      elseif vim.fn["vsnip#jumpable"](-1) == 1 then
--        feedkey("<Plug>(vsnip-jump-prev)", "")
--      end
--    end, {"i", "s"})
--    -- end of super Tab
    }
end

return pluginKeys
