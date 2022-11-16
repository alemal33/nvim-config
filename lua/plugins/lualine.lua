require('lualine').setup {

	options = {
		section_separators = {},
		component_separators = {},
	},

	sections = {

		lualine_b = { { '%l %2v', padding = 2 } },

		lualine_c = { { 'filename', path = 3, } },

		lualine_x = {

			{
				'diagnostics',
				on_click = function()
					vim.diagnostic.goto_next()
				end
			},

		},

		lualine_y = {

			{
				'diff',
				padding = { left = 1, right = 0 },
				on_click = function()
					vim.cmd ':DiffviewOpen'
				end
			},

			{ 'branch' },

		},

		lualine_z = {},

	},

}
