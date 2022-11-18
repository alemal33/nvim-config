require('telescope').setup {

	defaults = {

		prompt_prefix = '',
		path_display = {'truncate'},
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
require('telescope').load_extension('zf-native')
