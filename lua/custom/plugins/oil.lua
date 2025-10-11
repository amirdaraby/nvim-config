return {
  'stevearc/oil.nvim',
  cmd = { 'Oil' }, -- load only when :Oil is used
  keys = {
    { '<leader>e', '<cmd>Oil --float<CR>', desc = 'Open Oil (float)' },
  },
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if you prefer nvim-web-devicons
  lazy = false,
  config = function()
    require('oil').setup {
      -- Optional: customize settings
      default_file_explorer = true, -- replaces netrw
      columns = {
        'icon',
      },
      view_options = {
        show_hidden = false,
      },
      float = {
        -- padding = 2,
        max_width = 0.6,
        max_height = 0.6,
        border = 'rounded',
        win_options = {
          winblend = 12,
        },
      },
      -- See :help oil-actions for a list of all available actions
      keymaps = {
        ['g?'] = { 'actions.show_help', mode = 'n' },
        ['<CR>'] = 'actions.select',
        ['<C-s>'] = { 'actions.select', opts = { vertical = true } },
        ['<C-h>'] = { 'actions.select', opts = { horizontal = true } },
        ['<C-t>'] = { 'actions.select', opts = { tab = true } },
        ['<C-p>'] = 'actions.preview',
        ['<C-c>'] = { 'actions.close', mode = 'n' },
        ['<C-l>'] = 'actions.refresh',
        ['-'] = { 'actions.parent', mode = 'n' },
        ['_'] = { 'actions.open_cwd', mode = 'n' },
        ['gs'] = { 'actions.change_sort', mode = 'n' },
        ['g.'] = { 'actions.toggle_hidden', mode = 'n' },
        ['g\\'] = { 'actions.toggle_trash', mode = 'n' },
      },
    }

    -- Keybindings
    vim.keymap.set('n', '_', '<cmd>Oil<CR>', { desc = 'Open parent directory' })
  end,
}
