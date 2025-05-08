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
local package_path_str = "/Users/cmedley/.cache/nvim/packer_hererocks/2.1.1716656478/share/lua/5.1/?.lua;/Users/cmedley/.cache/nvim/packer_hererocks/2.1.1716656478/share/lua/5.1/?/init.lua;/Users/cmedley/.cache/nvim/packer_hererocks/2.1.1716656478/lib/luarocks/rocks-5.1/?.lua;/Users/cmedley/.cache/nvim/packer_hererocks/2.1.1716656478/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/cmedley/.cache/nvim/packer_hererocks/2.1.1716656478/lib/lua/5.1/?.so"
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
  ["CopilotChat.nvim"] = {
    config = { "\27LJ\2\nG\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\ndebug\2\nsetup\16CopilotChat\frequire\0" },
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/CopilotChat.nvim",
    url = "https://github.com/CopilotC-Nvim/CopilotChat.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["blamer.nvim"] = {
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/blamer.nvim",
    url = "https://github.com/APZelos/blamer.nvim"
  },
  catppuccin = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0!colorscheme catppuccin-mocha\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["copilot.vim"] = {
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["fuzzy-projectionist.vim"] = {
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/fuzzy-projectionist.vim",
    url = "https://github.com/c-brenn/fuzzy-projectionist.vim"
  },
  ["fzf-lua"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ffzf-lua\frequire\0" },
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/fzf-lua",
    url = "https://github.com/ibhagwan/fzf-lua"
  },
  ["glow.nvim"] = {
    config = { "\27LJ\2\nH\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\vborder\frounded\nsetup\tglow\frequire\0" },
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/glow.nvim",
    url = "https://github.com/ellisonleao/glow.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["none-ls.nvim"] = {
    config = { "\27LJ\2\nP\0\0\4\1\6\0\t6\0\0\0009\0\1\0009\0\2\0009\0\3\0005\2\4\0-\3\0\0=\3\5\2B\0\2\1K\0\1\0\1À\nbufnr\1\0\1\nbufnr\0\vformat\bbuf\blsp\bvimÓ\2\1\2\b\0\16\0\0309\2\0\0'\4\1\0B\2\2\2\15\0\2\0X\3\23€6\2\2\0009\2\3\0029\2\4\2'\4\5\0005\5\6\0B\2\3\0026\3\2\0009\3\3\0039\3\a\0035\5\b\0=\2\t\5=\1\n\5B\3\2\0016\3\2\0009\3\3\0039\3\v\3'\5\f\0005\6\r\0=\2\t\6=\1\n\0063\a\14\0=\a\15\6B\3\3\0012\0\0€K\0\1\0\rcallback\0\1\0\3\rcallback\0\vbuffer\0\ngroup\0\16BufWritePre\24nvim_create_autocmd\vbuffer\ngroup\1\0\2\vbuffer\0\ngroup\0\24nvim_clear_autocmds\1\0\1\nclear\2\17FormatOnSave\24nvim_create_augroup\bapi\bvim\28textDocument/formatting\20supports_method \1\1\0\6\0\n\0\0156\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0004\4\3\0009\5\3\0009\5\4\0059\5\5\5>\5\1\4=\4\a\0033\4\b\0=\4\t\3B\1\2\1K\0\1\0\14on_attach\0\fsources\1\0\2\14on_attach\0\fsources\0\rprettier\15formatting\rbuiltins\nsetup\fnull-ls\frequire\0" },
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/none-ls.nvim",
    url = "https://github.com/nvimtools/none-ls.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-gutentags"] = {
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/vim-gutentags",
    url = "https://github.com/ludovicchabant/vim-gutentags"
  },
  ["vim-liquid"] = {
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/vim-liquid",
    url = "https://github.com/tpope/vim-liquid"
  },
  ["vim-mix-format"] = {
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/vim-mix-format",
    url = "https://github.com/mhinz/vim-mix-format"
  },
  ["vim-projectionist"] = {
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/vim-projectionist",
    url = "https://github.com/tpope/vim-projectionist"
  },
  ["vim-projectionist-elixir"] = {
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/vim-projectionist-elixir",
    url = "https://github.com/andyl/vim-projectionist-elixir"
  },
  ["vim-test"] = {
    loaded = true,
    path = "/Users/cmedley/.local/share/nvim/site/pack/packer/start/vim-test",
    url = "https://github.com/vim-test/vim-test"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0!colorscheme catppuccin-mocha\bcmd\bvim\0", "config", "catppuccin")
time([[Config for catppuccin]], false)
-- Config for: glow.nvim
time([[Config for glow.nvim]], true)
try_loadstring("\27LJ\2\nH\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\vborder\frounded\nsetup\tglow\frequire\0", "config", "glow.nvim")
time([[Config for glow.nvim]], false)
-- Config for: fzf-lua
time([[Config for fzf-lua]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ffzf-lua\frequire\0", "config", "fzf-lua")
time([[Config for fzf-lua]], false)
-- Config for: CopilotChat.nvim
time([[Config for CopilotChat.nvim]], true)
try_loadstring("\27LJ\2\nG\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\ndebug\2\nsetup\16CopilotChat\frequire\0", "config", "CopilotChat.nvim")
time([[Config for CopilotChat.nvim]], false)
-- Config for: none-ls.nvim
time([[Config for none-ls.nvim]], true)
try_loadstring("\27LJ\2\nP\0\0\4\1\6\0\t6\0\0\0009\0\1\0009\0\2\0009\0\3\0005\2\4\0-\3\0\0=\3\5\2B\0\2\1K\0\1\0\1À\nbufnr\1\0\1\nbufnr\0\vformat\bbuf\blsp\bvimÓ\2\1\2\b\0\16\0\0309\2\0\0'\4\1\0B\2\2\2\15\0\2\0X\3\23€6\2\2\0009\2\3\0029\2\4\2'\4\5\0005\5\6\0B\2\3\0026\3\2\0009\3\3\0039\3\a\0035\5\b\0=\2\t\5=\1\n\5B\3\2\0016\3\2\0009\3\3\0039\3\v\3'\5\f\0005\6\r\0=\2\t\6=\1\n\0063\a\14\0=\a\15\6B\3\3\0012\0\0€K\0\1\0\rcallback\0\1\0\3\rcallback\0\vbuffer\0\ngroup\0\16BufWritePre\24nvim_create_autocmd\vbuffer\ngroup\1\0\2\vbuffer\0\ngroup\0\24nvim_clear_autocmds\1\0\1\nclear\2\17FormatOnSave\24nvim_create_augroup\bapi\bvim\28textDocument/formatting\20supports_method \1\1\0\6\0\n\0\0156\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0004\4\3\0009\5\3\0009\5\4\0059\5\5\5>\5\1\4=\4\a\0033\4\b\0=\4\t\3B\1\2\1K\0\1\0\14on_attach\0\fsources\1\0\2\14on_attach\0\fsources\0\rprettier\15formatting\rbuiltins\nsetup\fnull-ls\frequire\0", "config", "none-ls.nvim")
time([[Config for none-ls.nvim]], false)

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
