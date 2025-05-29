return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        local treesitter = require('nvim-treesitter.configs')
	treesitter.setup({
	    ensure_installed = {
		'json',
		'javascript',
		'typescript',
		'tsx',
		'php',
        'go',
		'yaml',
		'html',
		'css',
		'prisma',
		'markdown',
		'markdown_inline',
		'svelte',
		'graphql',
		'bash',
		'lua',
		'vim',
		'dockerfile',
		'gitignore',
		'query',
        'vue',
        'twig',
        'yaml',
	    },
	    highlight = { enable = true },
	    indent = { enable = true },
	})
    end
}
