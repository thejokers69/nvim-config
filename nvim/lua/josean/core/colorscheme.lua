-- /Users/thejoker/.config/nvim/lua/josean/core/colorscheme.lua
-- Remove this conflicting section
-- local status, _ = pcall(vim.cmd, "colorscheme nightfly")
-- if not status then
--   print("Colorscheme not found!")
--   return
-- end

vim.cmd("colorscheme tokyonight") -- set colorscheme to tokyonight
vim.o.termguicolors = true -- enable true color support