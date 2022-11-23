require 'nvim-treesitter.configs'.setup {

	refactor = {

		highlight_definitions = {
			enable = true,
			clear_on_cursor_move = true,
		},

		hightlight_current_scope = { enable = true },

		smart_rename = {
			enable = true,
			keymaps = {
				smart_rename = '<F6>'
			},
		},

		navigation = {
			enable = true,
			keymaps = {
				goto_definition = "gnd",
				list_definitions = "gnD",
				list_definitions_toc = "gO",
				goto_next_usage = "<a-*>",
				goto_previous_usage = "<a-#>",
			},
		},

	},

}
