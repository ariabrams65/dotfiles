return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                --automatically installs parser when encountering that filetype
                ensure_installed = {'lua', 'python', 'vimdoc', 'javascript', 'json', 'markdown', 'markdown_inline'},
                auto_install = true,
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false
                },
                indent = { enable = true },
            })
        end
    }
}
