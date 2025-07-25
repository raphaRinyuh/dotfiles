return {
    'mfussenegger/nvim-lint',
    event = {
	'BufReadPre',
	'BufNewFile',
    },
    config = function ()
    	local lint = require('lint')
	    lint.linters_by_ft = {
         php = { 'phpstan' },
        }

        local phpstan = require('lint').linters.phpstan
        phpstan.args = {
            'analyze',
            '--error-format=json',
            '--no-progress',
            '--level=4',
            vim.api.nvim_buf_get_name(0),
        }

        phpstan.cmd = vim.fn.getcwd() .. '/vendor/bin/phpstan'

        local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })

	    vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave'}, {
            group = lint_augroup,
            callback = function ()
                lint.try_lint()
            end,
	    })
        vim.keymap.set('n', '<leader>lf', function ()
            lint.try_lint()
        end, { desc = 'Trigger linting for current file' })
    end,
}
