return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            _G.builtin = require('telescope.builtin')
			vim.keymap.set("n", "<leader>ff", _G.builtin.find_files, { desc = "Telescope find files" })
			vim.keymap.set("n", "<leader>fg", _G.builtin.live_grep, { desc = "Telescope live grep" })
        end
    },
    {
        'nvim-telescope/telescope-ui-select.nvim',
        -- This is your opts table
        config = function()
            require("telescope").setup {
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {
                        }
                    }
                }
            }
            require("telescope").load_extension("ui-select")
        end
    }
}

