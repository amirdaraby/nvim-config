vim.cmd.colorscheme 'retrobox'

local function set_transparency()
  local transparent_groups = {
    'Normal',
    'NormalNC',
    'SignColumn',
    'LineNr',
    'FoldColumn',
    'CursorLineNr',
    'EndOfBuffer',
  }

  for _, group in ipairs(transparent_groups) do
    vim.api.nvim_set_hl(0, group, { bg = 'none' })
  end

  -- Keep plugin and floating windows readable
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = '#181818' })
  vim.api.nvim_set_hl(0, 'FloatBorder', { bg = '#181818', fg = '#5f5f5f' })
  vim.api.nvim_set_hl(0, 'Pmenu', { bg = '#202020' })
  vim.api.nvim_set_hl(0, 'PmenuSel', { bg = '#303030' })
end

set_transparency()

-- Reapply after colorscheme changes
vim.api.nvim_create_autocmd('ColorScheme', {
  group = vim.api.nvim_create_augroup('TransparentBG', { clear = true }),
  callback = set_transparency,
})
