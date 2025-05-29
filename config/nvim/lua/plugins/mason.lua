return {
    'williamboman/mason.nvim',
    dependencies = {
        'williamboman/mason-lspconfig.nvim',
        'WhoIsSethDaniel/mason-tool-installer.nvim'
    },
    config = function()
        local mason = require('mason')
        local mason_lspconfig = require('mason-lspconfig')
        local mason_tool_installer = require('mason-tool-installer')
        mason.setup()
        mason_lspconfig.setup({
            ensure_installed = {
            'lua_ls',
            'ts_ls',
            'intelephense',
            'cssls',
            'jsonls',
            'somesass_ls',
            'css_variables',
            'twiggy_language_server',
            'gopls',
            },
            automatic_installation = true,
        })

        --mason_lspconfig.setup_handlers({
        --        function(server_name)
        --        require('lspconfig')[server_name].setup({})
        --    end,
        --})

        mason_tool_installer.setup({
                ensure_installed = { 'prettier', 'eslint_d', 'php-cs-fixer', 'phpcs', 'twig-cs-fixer' },
        })

        require("lspconfig").volar.setup {
            filetypes = { 'vue' },
            init_options = {
                vue = {
                    hybridMode=false
                }
            }
        }

        require('lspconfig').eslint.setup{}
    end
}
