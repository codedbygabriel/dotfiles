return {
	{
		"gmr458/vscode_modern_theme.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("vscode_modern").setup({
				cursorline = true,
				transparent_background = false,
				nvim_tree_darker = true,
			})
		end,
	},
	{
		"dark-orchid/neovim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			require("dark-orchid").setup({})
		end,
	},
	{
		"kdheepak/monochrome.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("kanagawa").setup({
				-- transparent = true,
				theme = "dragon",
			})
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		lazy = false,
		priority = 1000,
		-- config = true,
		opts = ...,
		config = function()
			require("gruvbox").setup({
				transparent_mode = true,
				contrast = "hard",
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
				italics = true,
				transparent_background_level = 1,
			})
		end,
	},
	{
		"olivercederborg/poimandres.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("poimandres").setup({
				-- disable_background = true,
				-- disable_float_background = false,
			})
		end,
	},
}
