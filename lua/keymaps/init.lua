vim.g.mapleader = ' '

local function map(mode, lhs, rhs, desc, opts)
	opts = opts or {}
	opts.desc = desc
	vim.keymap.set(mode, lhs, rhs, opts)
end

local function include(name)
	require('keymaps.' .. name)
end
