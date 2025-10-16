return {
  'stevearc/oil.nvim',
  cmd = { 'Oil' },
  keys = {
    { '<leader>e', '<cmd>Oil --float<CR>', desc = 'Open Oil (float)' },
  },
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  lazy = false,
  config = function()
    -- Set float highlights before calling setup
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none', fg = 'none' })

    require('oil').setup {
      default_file_explorer = true,
      columns = { 'icon' },
      view_options = { show_hidden = false },
      float = {
        max_width = 0.6,
        max_height = 0.6,
        border = 'rounded', -- you can also try 'single' or 'none'
      },
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

    -- Optional: Reapply transparency whenever Oil float is opened
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'oil',
      callback = function()
        vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
        vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none', fg = 'none' })
      end,
    })
  end,
}
