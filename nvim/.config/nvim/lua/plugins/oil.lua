return {
    {
        'stevearc/oil.nvim',
        opts = {},
        -- Optional dependencies
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require('oil').setup({
                view_options = {
                    show_hidden = true,
                    is_always_hidden = function(name, _)
                        return name == '..'
                    end
                },
            })
            vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
        end
    }
}
