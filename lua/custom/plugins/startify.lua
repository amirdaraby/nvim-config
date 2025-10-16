return {
  'mhinz/vim-startify',
  lazy = false,
  priority = 100,
  config = function()
    -- Rest of your configuration remains the same
    vim.g.startify_custom_header = {
      [[ █████                                                      ]],
      [[░░███                                                       ]],
      [[ ░███████  ████████  ████████  ████████  ████████  ████████ ]],
      [[ ░███░░███░░███░░███░░███░░███░░███░░███░░███░░███░░███░░███]],
      [[ ░███ ░███ ░███ ░░░  ░███ ░░░  ░███ ░░░  ░███ ░░░  ░███ ░░░ ]],
      [[ ░███ ░███ ░███      ░███      ░███      ░███      ░███     ]],
      [[ ████████  █████     █████     █████     █████     █████    ]],
      [[░░░░░░░░  ░░░░░     ░░░░░     ░░░░░     ░░░░░     ░░░░░     ]],
      [[                                                            ]],
      [[                                                            ]],
      [[                                                            ]],
    }
    vim.cmd 'highlight StartifyHeader guifg=#62f57b' -- Apply the highlight group to the header
    vim.g.startify_custom_header_end = 'StartifyHeader'
    vim.g.startify_bookmarks = {
      { r = '~/repos' },
      { c = '~/.config/nvim/' },
    }

    vim.g.startify_lists = {
      { type = 'files', header = { '   Recent Files' } },
      { type = 'sessions', header = { '   Sessions' } },
      { type = 'bookmarks', header = { '   Bookmarks' } },
    }
    vim.g.change_to_dir = true
    vim.g.startify_session_autoload = 1
    vim.g.startify_change_to_vcs_root = 1
  end,
}
