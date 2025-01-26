-- /Users/thejoker/.config/nvim/lua/plugins/init.lua
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
