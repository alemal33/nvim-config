local function diff_source()
	local gitsigns = vim.b.gitsigns_status_dict
	if gitsigns then
		return {
			added = gitsigns.added,
			modified = gitsigns.changed,
			removed = gitsigns.removed
		}
	end
end

require('lualine').setup {

	options = {
		section_separators = {},
		component_separators = {},
	},

	sections = {

		lualine_a = {},

		lualine_b = { { '%l %2v' } },

		lualine_c = { { 'filename', path = 3, } },

		lualine_x = {

			{
				'diagnostics',
				padding = 2,
				on_click = function()
					vim.diagnostic.goto_next()
				end
			},

		},

		lualine_y = {

			{
				'diff',
				source = diff_source,
				padding = { left = 2, right = 1 },
				on_click = function()
					vim.cmd ':DiffviewOpen'
				end
			},

			{ 'branch' },

		},

		lualine_z = {},

	},

}
