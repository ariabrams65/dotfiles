return {
    {
        'williamboman/mason.nvim',
        lazy = false,
        config = function()
            require('mason').setup()
        end
    },
    {
        'williamboman/mason-lspconfig.nvim',
        lazy = false,
        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = {'lua_ls', 'tsserver', 'pyright'}
            })
        end
    },
    {
        'neovim/nvim-lspconfig',
        lazy = false,
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local lspconfig = require('lspconfig')
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = {'vim'}
                        }
                    }
                }
            })
            lspconfig.tsserver.setup({
                capabilities = capabilities
            })
            lspconfig.pyright.setup({
                capabilities = capabilities
            })

            vim.api.nvim_create_autocmd('LspAttach', {
                group = vim.api.nvim_create_augroup('lsp-attach', {clear = true}),
                callback = function()
                    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
                    vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
                    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
                    vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
                end
            })
            vim.api.nvim_create_autocmd('LspDetach', {
                group = vim.api.nvim_create_augroup('lsp-detach', {clear = true}),
                callback = function()
                    vim.lsp.buf.clear_references()
                end
            })

            -- border for hover windows
            vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
                vim.lsp.handlers.hover,
                {border = 'rounded'}
            )
            vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
                vim.lsp.handlers.signature_help,
                {border = 'rounded'}
            )
        end
    }
}
