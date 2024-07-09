--command.lua: settings for custom global commands

--"Open terminal in new horizontal split
vim.api.nvim_create_user_command('T', 'split | terminal', {})

--Open terminal in new vertical split
vim.api.nvim_create_user_command('VT', 'vsplit | terminal', {})
