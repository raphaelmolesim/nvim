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
local package_path_str = "/home/raphaelmolesim/.cache/nvim/packer_hererocks/2.1.1713484068/share/lua/5.1/?.lua;/home/raphaelmolesim/.cache/nvim/packer_hererocks/2.1.1713484068/share/lua/5.1/?/init.lua;/home/raphaelmolesim/.cache/nvim/packer_hererocks/2.1.1713484068/lib/luarocks/rocks-5.1/?.lua;/home/raphaelmolesim/.cache/nvim/packer_hererocks/2.1.1713484068/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/raphaelmolesim/.cache/nvim/packer_hererocks/2.1.1713484068/lib/lua/5.1/?.so"
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
  ["auto-save.nvim"] = {
    config = { "\27LJ\2\nT\0\0\4\0\5\0\b'\0\0\0006\1\1\0009\1\2\0019\1\3\1'\3\4\0B\1\2\2&\0\1\0L\0\2\0\r%H:%M:%S\rstrftime\afn\bvim\24AutoSave: saved at �\1\0\1\t\0\b\1\0246\1\0\0009\1\1\0016\2\2\0'\4\3\0B\2\2\0029\3\4\1\18\5\0\0'\6\5\0B\3\3\2\t\3\0\0X\3\v�9\3\6\0029\5\4\1\18\a\0\0'\b\a\0B\5\3\0024\6\0\0B\3\3\2\15\0\3\0X\4\2�+\3\2\0L\3\2\0+\3\1\0L\3\2\0\14&filetype\vnot_in\16&modifiable\14getbufvar\25auto-save.utils.data\frequire\afn\bvim\2�\2\1\0\5\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0003\4\4\0=\4\6\3=\3\a\0025\3\b\0=\3\t\0023\3\n\0=\3\v\0025\3\f\0=\3\r\2B\0\2\1K\0\1\0\14callbacks\1\0\2\5\0\5\0\14condition\0\19trigger_events\1\3\0\0\16InsertLeave\16TextChanged\22execution_message\fmessage\1\0\3\fmessage\0\22cleaning_interval\3�\t\bdim\4����\a����\3\0\1\0\a\19trigger_events\0\fenabled\2\19debounce_delay\3�\1\14callbacks\0\14condition\0\22write_all_buffers\1\22execution_message\0\nsetup\14auto-save\frequire\0" },
    loaded = true,
    path = "/home/raphaelmolesim/.local/share/nvim/site/pack/packer/start/auto-save.nvim",
    url = "https://github.com/Pocco81/auto-save.nvim"
  },
  ["blame.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\nblame\frequire\0" },
    loaded = true,
    path = "/home/raphaelmolesim/.local/share/nvim/site/pack/packer/start/blame.nvim",
    url = "https://github.com/FabijanZulj/blame.nvim"
  },
  ["catppuccin-mocha"] = {
    loaded = true,
    path = "/home/raphaelmolesim/.local/share/nvim/site/pack/packer/start/catppuccin-mocha",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/raphaelmolesim/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/raphaelmolesim/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/raphaelmolesim/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/raphaelmolesim/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["copilot.vim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/raphaelmolesim/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/home/raphaelmolesim/.local/share/nvim/site/pack/packer/start/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/raphaelmolesim/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/raphaelmolesim/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/raphaelmolesim/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/raphaelmolesim/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\1\14highlight\1\0\1\venable\2\1\0\3\14highlight\0\17auto_install\2\vindent\0\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/raphaelmolesim/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/raphaelmolesim/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/raphaelmolesim/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/raphaelmolesim/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rspec.nvim"] = {
    loaded = true,
    path = "/home/raphaelmolesim/.local/share/nvim/site/pack/packer/start/rspec.nvim",
    url = "https://github.com/mogulla3/rspec.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/raphaelmolesim/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/raphaelmolesim/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/home/raphaelmolesim/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/home/raphaelmolesim/.local/share/nvim/site/pack/packer/start/vim-visual-multi",
    url = "https://github.com/mg979/vim-visual-multi"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\1\14highlight\1\0\1\venable\2\1\0\3\14highlight\0\17auto_install\2\vindent\0\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: auto-save.nvim
time([[Config for auto-save.nvim]], true)
try_loadstring("\27LJ\2\nT\0\0\4\0\5\0\b'\0\0\0006\1\1\0009\1\2\0019\1\3\1'\3\4\0B\1\2\2&\0\1\0L\0\2\0\r%H:%M:%S\rstrftime\afn\bvim\24AutoSave: saved at �\1\0\1\t\0\b\1\0246\1\0\0009\1\1\0016\2\2\0'\4\3\0B\2\2\0029\3\4\1\18\5\0\0'\6\5\0B\3\3\2\t\3\0\0X\3\v�9\3\6\0029\5\4\1\18\a\0\0'\b\a\0B\5\3\0024\6\0\0B\3\3\2\15\0\3\0X\4\2�+\3\2\0L\3\2\0+\3\1\0L\3\2\0\14&filetype\vnot_in\16&modifiable\14getbufvar\25auto-save.utils.data\frequire\afn\bvim\2�\2\1\0\5\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0003\4\4\0=\4\6\3=\3\a\0025\3\b\0=\3\t\0023\3\n\0=\3\v\0025\3\f\0=\3\r\2B\0\2\1K\0\1\0\14callbacks\1\0\2\5\0\5\0\14condition\0\19trigger_events\1\3\0\0\16InsertLeave\16TextChanged\22execution_message\fmessage\1\0\3\fmessage\0\22cleaning_interval\3�\t\bdim\4����\a����\3\0\1\0\a\19trigger_events\0\fenabled\2\19debounce_delay\3�\1\14callbacks\0\14condition\0\22write_all_buffers\1\22execution_message\0\nsetup\14auto-save\frequire\0", "config", "auto-save.nvim")
time([[Config for auto-save.nvim]], false)
-- Config for: copilot.vim
time([[Config for copilot.vim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "copilot.vim")
time([[Config for copilot.vim]], false)
-- Config for: blame.nvim
time([[Config for blame.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\nblame\frequire\0", "config", "blame.nvim")
time([[Config for blame.nvim]], false)

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
