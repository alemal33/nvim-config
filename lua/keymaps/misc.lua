-- [CTRL + S] :write
vim.keymap.set('n', '<c-s>', ':w<CR>')
vim.keymap.set('i', '<c-s>', '<c-o>:w<CR>')

-- change directory
vim.keymap.set('n', '<LEADER>cd', function() vim.cmd(':cd %:p:h'); print('cd ' .. vim.fn.getcwd()) end)

-- Telescope
NTelescopeMap('T', 'builtin')
NTelescopeMap(' ', 'resume')
NTelescopeMap('H', 'help_tags')
NTelescopeMap('m', 'marks')
NTelescopeMap('r', 'registers')
