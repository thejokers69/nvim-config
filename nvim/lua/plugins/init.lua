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
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		init = function()
			vim.o.termguicolors = true
			vim.cmd.colorscheme("tokyonight")
		end,
		opts = {
			style = "night",
			transparent = false,
			terminal_colors = true,
			styles = {
				comments = { italic = true },
				keywords = { italic = false },
			},
			on_colors = function(colors)
				colors.error = "#ff0000"
			end,
		},
		config = function(_, opts)
			require("tokyonight").setup(opts)
			vim.cmd.colorscheme("tokyonight")
		end,
	},
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("nvim-tree").setup({
				renderer = {
					icons = {
						glyphs = {
							folder = {
								arrow_closed = "▶",
								arrow_open = "▼",
								default = "",
								open = "",
								empty = "",
								empty_open = "",
							},
						},
					},
				},
			})
		end,
	},
	{ import = "lazyvim.plugins.extras.linting.eslint" },
	{ import = "lazyvim.plugins.extras.formatting.prettier" },
	{ import = "lazyvim.plugins.extras.lang.typescript" },
	{ import = "lazyvim.plugins.extras.lang.json" },
	{ import = "lazyvim.plugins.extras.lang.rust" },
	{ import = "lazyvim.plugins.extras.lang.tailwind" },
	{ import = "lazyvim.plugins.extras.util.mini-hipatterns" },
	{ import = "plugins" },
}
