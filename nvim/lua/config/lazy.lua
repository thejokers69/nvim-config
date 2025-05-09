-- This file configures the Lazy.nvim plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	rocks = {
		hererocks = false,
		enabled = false,
	},
	spec = {
		-- add LazyVim and import its plugins
		{
			"LazyVim/LazyVim",
			import = "lazyvim.plugins",
			opts = {
				colorscheme = "tokyonight", -- set tokyonight as default
				news = {
					lazyvim = true,
					neovim = true,
				},
			},
		},
		-- Remove the solarized.nvim plugin and add tokyonight.nvim
		{
			"folke/tokyonight.nvim", -- Tokyo Night plugin
			lazy = false, -- Load immediately
			priority = 1000, -- High priority to ensure it loads first
			init = function()
				vim.o.termguicolors = true
				vim.cmd.colorscheme("tokyonight") -- force-set here as fallback
			end,
			opts = {
				style = "night", -- Try: "night" (default), "storm", "day", "moon"
				transparent = false, -- Transparent background
				terminal_colors = true, -- Sync terminal colors
				styles = {
					comments = { italic = true },
					keywords = { italic = false },
				},
				-- Override specific colors (example):
				on_colors = function(colors)
					colors.error = "#ff0000" -- Make errors bright red
				end,
			},
			config = function(_, opts)
				require("tokyonight").setup(opts)
				vim.cmd.colorscheme("tokyonight") -- explicitly set here
			end,
		},
		-- Add nvim-tree plugin
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
		-- import any extras modules here
		{ import = "lazyvim.plugins.extras.linting.eslint" },
		{ import = "lazyvim.plugins.extras.formatting.prettier" },
		{ import = "lazyvim.plugins.extras.lang.typescript" },
		{ import = "lazyvim.plugins.extras.lang.json" },
		-- { import = "lazyvim.plugins.extras.lang.markdown" },
		{ import = "lazyvim.plugins.extras.lang.rust" },
		{ import = "lazyvim.plugins.extras.lang.tailwind" },
		-- { import = "lazyvim.plugins.extras.coding.copilot" },
		-- { import = "lazyvim.plugins.extras.dap.core" },
		-- { import = "lazyvim.plugins.extras.vscode" },
		{ import = "lazyvim.plugins.extras.util.mini-hipatterns" },
		-- { import = "lazyvim.plugins.extras.test.core" },
		-- { import = "lazyvim.plugins.extras.coding.yanky" },
		-- { import = "lazyvim.plugins.extras.editor.mini-files" },
		-- { import = "lazyvim.plugins.extras.util.project" },
		-- -- Import other plugins
		{ import = "plugins" },
	},
	defaults = {
		-- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
		-- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
		lazy = false,
		-- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
		-- have outdated releases, which may break your Neovim install.
		version = false, -- Toujours utiliser la version Git
		-- version = "*", -- try installing the latest stable version for plugins that support semver
	},
	dev = {
		path = "~/.ghq/github.com",
	},
	checker = { enabled = true }, -- automatically check for plugin updates
	performance = {
		cache = {
			enabled = true,
			-- disable_events = {},
		},
		rtp = {
			-- disable some rtp plugins
			disabled_plugins = {
				"gzip",
				-- "matchit",
				-- "matchparen",
				"netrwPlugin",
				"rplugin",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
	ui = {
		custom_keys = {
			["<localleader>d"] = function(plugin)
				dd(plugin)
			end,
		},
	},
	debug = false,
})
