require("config.keymaps")
require("config.options")

-- Variável global, adicione para incrementar LSP's... (ou formatters.)
_G.user_servers = {
	-- Web Development
	html = "html",
	css = "cssls",
	javascript = "ts_ls",

	-- Back-end
	java = "jdtls",
	python = "pylsp",
	lua = "lua_ls",
	c = "clangd",
}

-- Init Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({

		"git",

		"clone",

		"--filter=blob:none",

		"https://github.com/folke/lazy.nvim.git",

		"--branch=stable", -- latest stable release

		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

local opts = {}
require("lazy").setup("plugins", opts) -- Setup pro Lazy
