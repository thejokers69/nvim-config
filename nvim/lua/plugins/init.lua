-- This file initializes plugins for Neovim

return {
	-- Solarized color scheme plugin
	{
		"shaunsingh/solarized.nvim",
		config = function()
			vim.cmd("colorscheme solarized")
		end,
	},
	-- Add other plugins here...
}
