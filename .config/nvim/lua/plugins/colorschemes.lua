return {
    {
        'neanias/everforest-nvim',
        version = false,
        lazy = false,
        --priority = 1000,
        config = function()
            -- vim.cmd.colorscheme 'everforest'
        end
    },
    {
        "oxfist/night-owl.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            -- vim.cmd.colorscheme("night-owl")
        end
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require('catppuccin').setup({
                flavor = "frappe",
                transparent_background = true,
                integrations = {
                    indent_blankline = { enabled = false },

                },
                custom_highlights = function(colors)
                    return {
                        -- Pmenu = { bg = colors.none },
                        LineNr = { fg = colors.surface2 },

                    }
                end
            })
            vim.cmd.colorscheme("catppuccin")
        end
    }
}
