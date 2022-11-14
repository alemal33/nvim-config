require('lualine').setup {

	options = {
		component_separators = {},
		section_separators = {},
	},

	sections = {
		lualine_b = {'branch', 'diff'},
		lualine_c = {'filename', 'diagnostics'},
		lualine_x = {
			{ 'encoding', padding = { right = 3 }, },
			{ 'fileformat', padding = { right = 3 }, icons_enabled = false, },
		},
		lualine_y = {},
		lualine_z = { '%l:%c' },
	},

}
