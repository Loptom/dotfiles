return {
	{
		"nvim-tree/nvim-web-devicons",
		opts = {},
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		event = "BufEnter",
		opts = {},
	},
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
		opts = { render_modes = { "n", "c", "t" } },
		ft = { "markdown" },
	},
    {
        "norcalli/nvim-colorizer.lua",
        opts = {}
    },
}
