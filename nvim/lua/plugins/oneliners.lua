return {
	{
		"github/copilot.vim",
	},
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup({
				size = 10,
				open_mapping = [[<F7>]],
				shading_factor = 2,
				direction = "float",
				float_opts = {
					border = "curved",
					highlights = {
						border = "Normal",
						background = "Normal",
					},
				},
			})
		end,
	},
	{
		"andweeb/presence.nvim",
		config = function()
			require("presence").setup({})
		end,
	},
	{
		"brianhuster/live-preview.nvim",
		dependencies = {
			-- You can choose one of the following pickers
			"nvim-telescope/telescope.nvim",
		},
	},
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
				themes = { "kanagawa", "gruvbox", "everforest", "poimandres", "monochrome", "dark-orchid", "vscode_modern"},
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
	{
		"karb94/neoscroll.nvim",
		opts = {},
		config = function()
			require("neoscroll").setup({
				mappings = { -- Keys to be mapped to their corresponding default scrolling animation
					"<C-u>",
					"<C-d>",
					"<C-b>",
					"<C-f>",
					"<C-y>",
					"<C-e>",
					"zt",
					"zz",
					"zb",
				},
				hide_cursor = true,
				stop_eof = true,
				respect_scrolloff = false,
				cursor_scrolls_alone = true,
				duration_multiplier = 1.0,
				easing = "linear",
				pre_hook = nil,
				post_hook = nil,
				performance_mode = false,
				ignored_events = {
					"WinScrolled",
					"CursorMoved",
				},
			})
		end,
	},
}
