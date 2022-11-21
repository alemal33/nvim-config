Telescope = require('telescope')
TelescopeBuiltin = require('telescope.builtin')

Telescope.setup {

	defaults = {

		prompt_prefix = '',
		path_display = { 'truncate' },
	},

	pickers = {

		buffers = {
			initial_mode = 'normal',
			theme = 'dropdown',
			layout_config = {
				width = 50,
			},
			ignore_current_buffer = true,
			sort_lastused = true,
		},

	},
}
Telescope.load_extension('zf-native')
