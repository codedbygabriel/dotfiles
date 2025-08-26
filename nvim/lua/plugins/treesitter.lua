local languages = {}

for language, _ in pairs(user_servers) do
	table.insert(languages, language)
end

return {
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
}
