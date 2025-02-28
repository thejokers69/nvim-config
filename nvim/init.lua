-- /Users/thejoker/.config/nvim/init.lua
-- This file initializes Neovim

if vim.loader then
	vim.loader.enable()
end

_G.dd = function(...)
	require("util.debug").dump(...)
end
vim.print = _G.dd

require("config.lazy")
