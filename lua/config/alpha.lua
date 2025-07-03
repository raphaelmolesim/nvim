local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  vim.notify("Alpha not found")
  return
end

local icons_ok, icons = pcall(require, "nvim-web-devicons")
if not icons_ok then
  vim.notify("nvim-web-devicons not found")
  return
end

local theme = require("alpha.themes.dashboard")
-- available: devicons, mini, default is mini
-- if provider not loaded and enabled is true, it will try to use another provider
-- theme.file_icons.provider = "devicons"
require("alpha").setup(
  theme.config
)
