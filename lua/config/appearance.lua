vim.cmd.colorscheme 'gruvbox'

vim.cmd [[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NonText guibg=NONE ctermbg=NONE
]]

vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })

-- Custom Git sign colors
vim.api.nvim_set_hl(0, 'GitSignsAdd', { fg = '#9ece6a', bg = 'none' }) -- green
vim.api.nvim_set_hl(0, 'GitSignsChange', { fg = '#7aa2f7', bg = 'none' }) -- blue
vim.api.nvim_set_hl(0, 'GitSignsDelete', { fg = '#f7768e', bg = 'none' }) -- red

-- LSP hover
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
vim.api.nvim_set_hl(0, 'FloatBorder', { fg = '#a9b1d6', bg = 'none' })

-- Transparent diff backgrounds
vim.api.nvim_set_hl(0, 'DiffAdd', { bg = 'none', fg = '#9ece6a' }) -- green
vim.api.nvim_set_hl(0, 'DiffChange', { bg = 'none', fg = '#7aa2f7' }) -- blue
vim.api.nvim_set_hl(0, 'DiffDelete', { bg = 'none', fg = '#f7768e' }) -- red
vim.api.nvim_set_hl(0, 'DiffText', { bg = 'none', fg = '#bb9af7' }) -- optional inline change
