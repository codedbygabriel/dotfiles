return {
	{
		"brenoprata10/nvim-highlight-colors",
		config = function()
			require("nvim-highlight-colors").setup({})
		end,
	},
	{
		"zaldih/themery.nvim",
		lazy = false,
		config = function()
			require("themery").setup({
				themes = { "kanagawa", "gruvbox", "everforest" },
				livePreview = true,
			})
			vim.keymap.set("n", "ts", ":Themery<CR>", { desc = "Show Themes" })
		end,
	},
	{
		"f-person/git-blame.nvim",

		event = "VeryLazy",
		opts = {
			enabled = true,
			message_template = " <summary> • <date> • <author> • <<sha>>",
			date_format = "%m-%d-%Y %H:%M:%S",
			virtual_text_column = 1,
		},
	},
}
