local languages = {}

for language, _ in pairs(user_servers) do
	table.insert(languages, language)
end

return {
	{
		"rachartier/tiny-inline-diagnostic.nvim",
		event = "VeryLazy",
		priority = 1000,
		config = function()
			require("tiny-inline-diagnostic").setup()
			vim.diagnostic.config({ virtual_text = false }) -- Disable default virtual text
		end,
	},
	{

		"nvim-treesitter/nvim-treesitter",
		branch = "master",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = languages, -- Deriva da variável global user_servers
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
}
