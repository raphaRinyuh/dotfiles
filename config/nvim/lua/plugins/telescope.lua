return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function ()
        local telescope = require'telescope'
        telescope.setup { defaults = { file_ignore_patterns = { "node_modules/", "var/", "public/" } } }

        local telescope_builtin = require'telescope.builtin'
	    vim.keymap.set('n', '<leader>lg', telescope_builtin.live_grep)
	    vim.keymap.set('n', '<leader>ff', telescope_builtin.find_files)
	    vim.keymap.set('n', '<leader>gs', telescope_builtin.grep_string)
    end
}
