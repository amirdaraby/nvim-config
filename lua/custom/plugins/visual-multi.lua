return {
  'mg979/vim-visual-multi',
  branch = 'master',
  init = function()
    vim.g.VM_maps = {
      ['Find Under'] = '<A-j>', -- Alt+j → select next match
      ['Find Subword Under'] = '<A-j>',
      ['Skip Region'] = '<A-k>', -- Alt+k → skip current
      ['Remove Region'] = '<A-l>', -- Alt+l → deselect current
    }

    vim.cmd [[
      hi VM_Cursor guibg=#ffcc00 guifg=#000000
      hi VM_Extend guibg=#ffcc00 guifg=#000000
    ]]
  end,
}
