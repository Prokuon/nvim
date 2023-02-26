--@diagnostic disable: undefined-global
--在没有安装packer的电脑上，自动安装packer插件
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
-- fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})	--默认地址
-- fn.system({'git', 'clone', '--depth', '1', 'https://codechina.csdn.net/mirrors/wbthomason/packer.nvim.git', install_path})	--csdn加速镜像
-- fn.system({'git', 'clone', '--depth', '1', 'https://gitcode.net/nvim-packer/packer.nvim', install_path})	--gitee加速镜像
-- vim.cmd 'packadd packer.nvim'
end
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup({
    function()
        use 'wbthomason/packer.nvim'-- Packer can manage itself
        use {
            "vim-airline/vim-airline",
            requires = {
                "vim-airline/vim-airline-themes",
                --综合图标支持such vim-airline lightline, vim-startify
                --"ryanoasis/vim-devicons"
            }
        }
        use {'andymass/vim-matchup', event = 'VimEnter'}
        use({ "williamboman/mason.nvim" })
        use({ "williamboman/mason-lspconfig.nvim" })
        use("navarasu/onedark.nvim")
        use { "catppuccin/nvim", as = "catppuccin" }
        use 'folke/tokyonight.nvim'
        use {
            'nvim-tree/nvim-tree.lua',
            requires = {
                'nvim-tree/nvim-web-devicons', -- optional, for file icons
            },
            tag = 'nightly' -- optional, updated every week. (see issue #1193)
        }
        use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})
        use { 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } }
        -- telescope extensions
        use "LinArcX/telescope-env.nvim"
        -- dashboard-nvim 启动页
        use("glepnir/dashboard-nvim")
        use("ahmedkhalf/project.nvim")
        use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
        
        -- nvim-autopairs 括号自动匹配
        use({
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup{} 
            end,
        })

        -- 补全引擎
        use("hrsh7th/nvim-cmp")
        -- snippet 引擎
        use("hrsh7th/vim-vsnip")
        -- 补全源
        use("hrsh7th/cmp-vsnip")
        use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
        use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
        use("hrsh7th/cmp-path") -- { name = 'path' }
        use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }

        -- 常见编程语言代码段
        use("rafamadriz/friendly-snippets")
        -- Lua 增强
        use("folke/neodev.nvim")
        -- JSON 增强
        use("b0o/schemastore.nvim")
        -- Rust 增强
        use("simrat39/rust-tools.nvim")
        -- 常见编程语言代码段
        -- use("rafamadriz/friendly-snippets")
        -- ui (新增)
        use("onsails/lspkind-nvim")
        -- 竖线
        use("lukas-reineke/indent-blankline.nvim")
        -- 注释
        use {
            'numToStr/Comment.nvim',
            config = function()
            require('Comment').setup()
        end
        }
        -- use({
        --     "iamcco/markdown-preview.nvim",
        --     run = function() vim.fn["mkdp#util#install"]() end,
        -- })
        -- markdown预览
        use({ 
            "iamcco/markdown-preview.nvim", run = "cd app && npm install", 
            setup = function() vim.g.mkdp_filetypes = { "markdown" } 
            end, 
            ft = { "markdown" }, 
        })
        -- lualine底部信息栏
        use({ 
            "nvim-lualine/lualine.nvim", 
            requires = { "kyazdani42/nvim-web-devicons" } 
        })
        use("arkav/lualine-lsp-progress")
        -- 保存只读文件
        use("lambdalisue/suda.vim")
        -- 代码片段
        -- use("SirVer/ultisnips")
        -- LATEX支持
        use("lervag/vimtex")
        -- use("honza/vim-snippets")
        use("L3MON4D3/LuaSnip")
        use({"francoiscabrol/ranger.vim", requires  = {"rbgrouleff/bclose.vim" } })
        use ({
            "akinsho/toggleterm.nvim", 
            tag = '*', 
            config = function()
                require("toggleterm").setup()
            end
        })
        use({'neoclide/coc.nvim', branch = 'release'})


    end,
    config = {
        max_jobs = 16,
        git = {
            -- default_url_format = 'https://hub.fastgit.org/%s'
            -- default_url_format = "https://gitclone.com/github.com/%s",
        },
        display = {
            open_fn = function()
                return require('packer.util').float({ border = 'single' })
            end
        }
    }
})

-- 每次保存 plugins.lua 自动安装插件
--pcall(
--    vim.cmd,
--    [[
--        augroup packer_user_config
--        autocmd!
--        autocmd BufWritePost plugins.lua source <afile> | PackerSync
--        augroup end
--    ]]
--)
