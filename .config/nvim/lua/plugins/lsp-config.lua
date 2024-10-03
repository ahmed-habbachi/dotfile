return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            auto_install = true
        },
        config = function()
            require("mason-lspconfig").setup({
                -- ensure_installed = {"lua_ls"}
                ensure_installed = {"lua_ls", "angularls", "bashls", "csharp_ls", "cssls", "dockerls", "html", "jsonls", "ts_ls", "remark_ls", "sqlls", "somesass_ls", "lemminx", "yamlls"}
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({capabilities = capabilities})
            --lspconfig.lua_ls.setup({})
            lspconfig.ts_ls.setup({capabilities = capabilities})
            --lspconfig.tsserver.setup({})
            lspconfig.html.setup({capabilities = capabilities})
            lspconfig.angularls.setup({capabilities = capabilities})
            --lspconfig.angularls.setup({})
            lspconfig.bashls.setup({capabilities = capabilities})
            lspconfig.csharp_ls.setup({capabilities = capabilities})
            lspconfig.cssls.setup({capabilities = capabilities})
            lspconfig.dockerls.setup({capabilities = capabilities})
            lspconfig.jsonls.setup({capabilities = capabilities})
            lspconfig.remark_ls.setup({capabilities = capabilities})
            lspconfig.sqlls.setup({capabilities = capabilities})
            lspconfig.somesass_ls.setup({capabilities = capabilities})
            lspconfig.lemminx.setup({capabilities = capabilities})
            lspconfig.yamlls.setup({capabilities = capabilities})
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}
