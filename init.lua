-- 基础配置
require('basic')
-- Packer插件管理
require('plugins')
-- 快捷键映射
require('keybindings')
-- 主题设置
require('colorscheme')
-- 内置lsp
-- require("lsp.setup")
-- require("lsp.cmp")
-- require("lsp.ui")
-- 插件配置
-- 缩进指示线
require("plugin-config.indent-blankline")
-- nvim底栏
require("plugin-config.lualine")
-- 快捷键注释
require("plugin-config.comment")
-- 自动补全括号
require("plugin-config.nvim-autopairs")
-- 目录栏
require("plugin-config.nvim-tree")
-- nvim顶栏
require("plugin-config.bufferline")
-- 搜索
require("plugin-config.telescope")
-- 启动页
require("plugin-config.dashboard")
-- 项目管理
require("plugin-config.project")
-- 代码高亮
require("plugin-config.nvim-treesitter")
-- Latex
require("plugin-config.vimtex")
-- 代码块
require("plugin-config.luasnip")
-- 浮动终端
require("plugin-config.toggleterm")
-- coc配置
require("plugin-config.coc")
