return {
	{
		'brenoprata10/nvim-highlight-colors',
		config = function()
			require('nvim-highlight-colors').setup({})	
		end
	},
	{
		"zaldih/themery.nvim",
		lazy = false,
		config = function ()
			require("themery").setup({
				themes = {"kanagawa", "gruvbox", "everforest"},
				livePreview = true,
			})
			vim.keymap.set("n", "ts", ":Themery<CR>", { desc = "Show Themes" })
		end
	}
}
