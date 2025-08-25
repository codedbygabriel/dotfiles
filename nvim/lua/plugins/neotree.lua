return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons", -- optional, but recommended
		},
		lazy = false, -- neo-tree will lazily load itself
		config = function()
			require("neo-tree").setup({
				vim.keymap.set("n", "<leader>n", ":Neotree toggle<cr>", { desc = "Toggle Neo-tree" }),
				filter = {dotfiles = true,},
			})
		end,
	},
}
