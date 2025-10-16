return {
  'nvim-treesitter/nvim-treesitter-context',
  config = function()
    require('treesitter-context').setup {
      enable = false, -- start disabled
      max_lines = 6,
      trim_scope = 'outer',
      mode = 'cursor',
      separator = '',
    }
  end,
}
