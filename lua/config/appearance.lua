vim.cmd.colorscheme 'retrobox'

vim.cmd [[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NonText guibg=NONE ctermbg=NONE
]]

vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })

-- Custom Git sign colors
vim.api.nvim_set_hl(0, 'GitSignsAdd', { fg = '#9ece6a', bg = 'none' }) -- green
vim.api.nvim_set_hl(0, 'GitSignsChange', { fg = '#7aa2f7', bg = 'none' }) -- blue
vim.api.nvim_set_hl(0, 'GitSignsDelete', { fg = '#f7768e', bg = 'none' }) -- red
