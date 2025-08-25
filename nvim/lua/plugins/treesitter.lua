local langs = {}


for language, server in pairs(_G.user_servers) do
	table.insert(langs, language)
end


return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = langs, -- Deriva da variável global user_servers
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}


