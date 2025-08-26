vim.g.mapleader = " "     -- Define <leader> como espaço.
local keymap = vim.keymap -- Atalho.

-- Movimentação
keymap.set("n", "<leader>h", "<C-w>h", { desc = "Go to Left Window" })
keymap.set("n", "<leader>j", "<C-w>j", { desc = "Go to Lower Window" })
keymap.set("n", "<leader>k", "<C-w>k", { desc = "Go to Upper Window" })
keymap.set("n", "<leader>l", "<C-w>l", { desc = "Go to Right Window" })

-- Ações
keymap.set("n", "-", string.format(":vertical resize -%d<CR>", resize_value), { desc = "Resize -" })
keymap.set("n", "=", string.format(":vertical resize +%d<CR>", resize_value), { desc = "Resize +" })

keymap.set("n", "<leader>sv", ":vsplit<CR><C-w>l", { desc = "Split vertically" })

-- Funções básicas
keymap.set("n", "<leader>q", ":q<CR>", { desc = "Closes current window" })
keymap.set("n", "<leader>w", ":w<CR>", { desc = "Saves, lmfao" })

keymap.set(
	"n",
	"<leader>tv",
	":vsplit<CR> | <C-w>l | :terminal<CR>",
	{ desc = "Creates a new terminal on a vertical split." }
)

keymap.set(
	"n",
	"<leader>th",
	":split<CR> | <C-w>l | :wincmd J<CR> | :terminal<CR>",
	{ desc = "Creates a new terminal on a horizontal split and throws it down." }
)

-- Gradle
keymap.set("n", "<leader>gr", ":!gradle run<CR>", { desc = "Gradle, run..." })

-- idk yet
keymap.set("n", "<leader>fp", function()
	local file_dir = vim.fn.expand("%:p")
	local file_name = vim.fn.expand("%")

	print(file_dir, file_name)
end)
