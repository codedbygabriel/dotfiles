return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				--null_ls.builtins.formatting.google_java_format,
				null_ls.builtins.formatting.prettier,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
		vim.keymap.set("n", "<leader>gw", function()
			vim.lsp.buf.format()
			vim.cmd("w")
		end, {})
	end,
}
