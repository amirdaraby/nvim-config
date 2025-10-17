-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', 'sh', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', 'sl', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', 'sj', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', 'sk', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', 'tn', '<cmd>tabn<CR>', { desc = 'next tab' })
vim.keymap.set('n', 'tp', '<cmd>tabp<CR>', { desc = 'previous tab' })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
vim.keymap.set('n', 'MH', '<C-w>H', { desc = 'Move window to the left' })
vim.keymap.set('n', 'ML', '<C-w>L', { desc = 'Move window to the right' })
vim.keymap.set('n', 'MJ', '<C-w>J', { desc = 'Move window to the lower' })
vim.keymap.set('n', 'MK', '<C-w>K', { desc = 'Move window to the upper' })

vim.keymap.set('n', '<A-Left>', '<C-w><', { desc = 'Resize split left' })
vim.keymap.set('n', '<A-Right>', '<C-w>>', { desc = 'Resize split right' })
vim.keymap.set('n', '<A-Up>', '<C-w>+', { desc = 'Resize split up' })
vim.keymap.set('n', '<A-Down>', '<C-w>-', { desc = 'Resize split down' })

vim.keymap.set('n', '<leader>tt', function()
  local buf_dir = vim.fn.expand '%:p:h'

  -- Change to the buffer's directory if valid
  if buf_dir ~= '' and buf_dir ~= '.' then
    vim.cmd('lcd ' .. vim.fn.fnameescape(buf_dir))
  end

  -- Open a new tab
  vim.cmd 'tabnew'

  -- Open terminal in the new tab
  vim.cmd 'terminal'

  -- Enter insert mode automatically
  vim.cmd 'startinsert'
end, { desc = 'Open terminal in new tab' })

vim.keymap.set('n', '<leader>ts', '<cmd>ToggleContext<CR>', { desc = 'Toggle treesitter context', noremap = true, silent = true })
vim.keymap.set('n', '<leader>jc', function()
  require('treesitter-context').go_to_context(vim.v.count1)
end, { silent = true, desc = 'Jump to scope start' })

vim.keymap.set('n', 'K', function()
  vim.lsp.buf.hover {
    border = 'rounded',
    max_width = 70,
    max_height = 20,
    wrap = true,
  }
end, { desc = 'LSP hover with rounded border and minimal padding' })
