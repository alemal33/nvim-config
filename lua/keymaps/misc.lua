-- change directory
vim.keymap.set('n', '<LEADER>cd', function() vim.cmd(':cd %:p:h'); print('cd ' .. vim.fn.getcwd()) end)
