return {
	-- THEMERY PLUGIN
	{
		"zaldih/themery.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("themery").setup({
				themes = {
					{
						name = "tokyonight",
						colorscheme = "tokyonight",
					},
					{
						name = "gruvbox",
						colorscheme = "gruvbox",
					},
					{
						name = "rose-pine",
						colorscheme = "rose-pine",
					},
					{
						name = "gruber-darker",
						colorscheme = "gruber-darker",
					},
					{
						name = "nightfox",
						colorscheme = "nightfox",
					},
					{
						name = "everforest",
						colorscheme = "everforest",
					},
				},
				-- themeConfigFile = "~/.config/nvim/lua/themery_theme.lua", -- Outdated
				livePreview = true,
			})
		end,
	},

	-- Themes
	{
		"folke/tokyonight.nvim",
		name = "tokyonight",
		lazy = true,
		opts = { style = "moon", transparent = true },
	},
	{
		"ellisonleao/gruvbox.nvim",
		name = "gruvbox",
		lazy = true,
		opts = {},
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		lazy = true,
		opts = { variant = "main", disable_background = true },
	},
	{
		"blazkowolf/gruber-darker.nvim",
		name = "gruber-darker",
		lazy = true,
		opts = {
			italic = {
				strings = false,
				comments = false,
				operators = false,
				folds = false,
			},
		},
	},
	{
		"EdenEast/nightfox.nvim",
		name = "nightfox",
		lazy = true,
		opts = {},
	},
	{
        "sainnhe/everforest",
		name = "everforest",
		lazy = true,
		opts = {},
	},
}
