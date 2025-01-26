-- Allow copy and paste to system clipboard
vim.g.clipboard = {
  name = "win32yank",
  copy = {
     ["+"] = "clip.exe",
     ["*"] = "clip.exe",
  },
  paste = {
    ["+"] = "powershell.exe -NoProfile -Command [console]::In.ReadToEnd()",
    ["*"] = "powershell.exe -NoProfile -Command [console]::In.ReadToEnd()",
  },
  cache_enabled = 0,
}

