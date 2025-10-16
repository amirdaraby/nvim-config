-- Toggle treesitter-context on/off
vim.api.nvim_create_user_command('ToggleContext', function()
  local ts_context = require 'treesitter-context'
  ts_context.toggle()
end, {})
