return {
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("kanagawa").setup({
				transparent = true,
				theme = "dragon",
				background = {
					dark = "dragon"
				}
			})
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		lazy = false,
		priority = 1000,
		opts = ...,
		config = function()
			require("gruvbox").setup({
				transparent_mode = true,
				contrast = "hard",
			})
		end,
	},
	{
		"xero/miasma.nvim",
		lazy = false,
		priority = 1000,
		config = function()
		end,
	}
}
