vim.keymap.set('n', '<SPACE>', '<NOP>')
vim.g.mapleader = ' '

function NLeaderMap(lhs, rhs, opts)
	vim.keymap.set('n', '<LEADER>' .. lhs, rhs, opts)
end

function NTelescopeMap(lhs, builtin, opts)
	NLeaderMap(lhs, TelescopeBuiltin[builtin], opts)
end

local function include(name)
	require('keymaps.' .. name)
end

include('misc')
include('buffers')
include('file_pickers')
