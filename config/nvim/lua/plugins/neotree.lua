return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
      require("neo-tree").setup({
        window = {
          position = "current"
        },
        close_if_last_window = true,
        container = {
          enable_character_fade = false
        },
        indent = {
          indent_size = 1
        },
        name = {
          highlight_opened_files = true
        },
        filesystem = {
            filtered_items = {
                visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
                hide_dotfiles = false,
                hide_gitignored = true,
            }
        }
      })
      vim.keymap.set('n', '<leader>st', ':Neotree filesystem reveal current<CR>', {})
      vim.keymap.set('n', '<leader>ct', ':Neotree filesystem close<CR>', {})
    end
}
