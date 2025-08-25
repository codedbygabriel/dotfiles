return {
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("kanagawa").setup({
				transparent = true,
				theme = "dragon",
			})
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		lazy = false,
		priority = 1000,
		config = true,
		opts = ...,
		config = function()
			require("gruvbox").setup({
				transparent_mode = true,
			})
		end,
	},
	{
		"neanias/everforest-nvim",
		lazy = false,
		priority = 1000,
		version = false,
		config = function()
			require("everforest").setup({
				background = "hard",
				transparent_background_level = 1,
			})
		end,
	},
}
