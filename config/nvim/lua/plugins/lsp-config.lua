return {
    'neovim/nvim-lspconfig',
    lazy = false,
    config = function()
        vim.keymap.set('n', '<leader>hd', vim.lsp.buf.hover, {})
        vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
	vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]])
    end
}
