vim.g.mapleader = ' '

local function include(name)
	require('keymaps.' .. name)
end

include('telescope')
include('misc')
