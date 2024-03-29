-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/prokyon/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/prokyon/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/prokyon/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/prokyon/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/prokyon/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://gitclone.com/github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://gitclone.com/github.com/L3MON4D3/LuaSnip"
  },
  ["bclose.vim"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/bclose.vim",
    url = "https://gitclone.com/github.com/rbgrouleff/bclose.vim"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://gitclone.com/github.com/akinsho/bufferline.nvim"
  },
  catppuccin = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://gitclone.com/github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://gitclone.com/github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://gitclone.com/github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://gitclone.com/github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://gitclone.com/github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://gitclone.com/github.com/hrsh7th/cmp-vsnip"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/coc.nvim",
    url = "https://gitclone.com/github.com/neoclide/coc.nvim"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/dashboard-nvim",
    url = "https://gitclone.com/github.com/glepnir/dashboard-nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://gitclone.com/github.com/rafamadriz/friendly-snippets"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://gitclone.com/github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://gitclone.com/github.com/onsails/lspkind-nvim"
  },
  ["lualine-lsp-progress"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/lualine-lsp-progress",
    url = "https://gitclone.com/github.com/arkav/lualine-lsp-progress"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://gitclone.com/github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://gitclone.com/github.com/iamcco/markdown-preview.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://gitclone.com/github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://gitclone.com/github.com/williamboman/mason.nvim"
  },
  ["neodev.nvim"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/neodev.nvim",
    url = "https://gitclone.com/github.com/folke/neodev.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://gitclone.com/github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://gitclone.com/github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://gitclone.com/github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://gitclone.com/github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://gitclone.com/github.com/nvim-tree/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://gitclone.com/github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://gitclone.com/github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://gitclone.com/github.com/nvim-lua/plenary.nvim"
  },
  ["project.nvim"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/project.nvim",
    url = "https://gitclone.com/github.com/ahmedkhalf/project.nvim"
  },
  ["ranger.vim"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/ranger.vim",
    url = "https://gitclone.com/github.com/francoiscabrol/ranger.vim"
  },
  ["rust-tools.nvim"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/rust-tools.nvim",
    url = "https://gitclone.com/github.com/simrat39/rust-tools.nvim"
  },
  ["schemastore.nvim"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/schemastore.nvim",
    url = "https://gitclone.com/github.com/b0o/schemastore.nvim"
  },
  ["suda.vim"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/suda.vim",
    url = "https://gitclone.com/github.com/lambdalisue/suda.vim"
  },
  tagbar = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/tagbar",
    url = "https://gitclone.com/github.com/preservim/tagbar"
  },
  ["telescope-env.nvim"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/telescope-env.nvim",
    url = "https://gitclone.com/github.com/LinArcX/telescope-env.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://gitclone.com/github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://gitclone.com/github.com/akinsho/toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://gitclone.com/github.com/folke/tokyonight.nvim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/vim-airline",
    url = "https://gitclone.com/github.com/vim-airline/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/vim-airline-themes",
    url = "https://gitclone.com/github.com/vim-airline/vim-airline-themes"
  },
  ["vim-bbye"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/vim-bbye",
    url = "https://gitclone.com/github.com/moll/vim-bbye"
  },
  ["vim-matchup"] = {
    after_files = { "/home/prokyon/.local/share/nvim/site/pack/packer/opt/vim-matchup/after/plugin/matchit.vim" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/opt/vim-matchup",
    url = "https://gitclone.com/github.com/andymass/vim-matchup"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://gitclone.com/github.com/hrsh7th/vim-vsnip"
  },
  vimtex = {
    config = { "\27LJ\2\n�\2\0\0\2\0\r\0\0256\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\6\0006\0\0\0009\0\1\0'\1\b\0=\1\a\0006\0\0\0009\0\1\0'\1\n\0=\1\t\0006\0\0\0009\0\1\0'\1\f\0=\1\v\0K\0\1\0\r--unique(vimtex_view_general_options_latexmk&--unique file:@pdf\\#src:@line@tex vimtex_view_general_options\bnvr\29vimtex_compiler_progname\24tex_comment_nospell\1\0\1\6_\r-xelatex$vimtex_compiler_latexmk_engines\vokular\31vimtex_view_general_viewer\6g\bvim\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/prokyon/.local/share/nvim/site/pack/packer/opt/vimtex",
    url = "https://gitclone.com/github.com/lervag/vimtex"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: markdown-preview.nvim
time([[Setup for markdown-preview.nvim]], true)
try_loadstring("\27LJ\2\n=\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\2\0\0\rmarkdown\19mkdp_filetypes\6g\bvim\0", "setup", "markdown-preview.nvim")
time([[Setup for markdown-preview.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType tex ++once lua require("packer.load")({'vimtex'}, { ft = "tex" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'vim-matchup'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/prokyon/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]], true)
vim.cmd [[source /home/prokyon/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]]
time([[Sourcing ftdetect script at: /home/prokyon/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]], false)
time([[Sourcing ftdetect script at: /home/prokyon/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]], true)
vim.cmd [[source /home/prokyon/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]]
time([[Sourcing ftdetect script at: /home/prokyon/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]], false)
time([[Sourcing ftdetect script at: /home/prokyon/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]], true)
vim.cmd [[source /home/prokyon/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]]
time([[Sourcing ftdetect script at: /home/prokyon/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
