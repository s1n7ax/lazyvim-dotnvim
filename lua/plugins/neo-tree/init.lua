return {
	'nvim-neo-tree/neo-tree.nvim',
	optional = true,
	keys = {
		{
			'<leader>e',
			function()
				require('neo-tree.command')._command('reveal', 'toggle')
			end,
			desc = 'Reveal NeoTree (curren buffer)',
		},
	},
	opts = {
		popup_border_style = 'solid',
		window = {
			mappings = { e = 'none' },
			position = 'float',
		},
		filesystem = {
			group_empty_dirs = true,
			window = {
				mappings = {
					['/'] = 'noop',
					['z'] = 'noop',
					['?'] = 'noop',
					['<c-x>'] = 'open_split',
					['<c-v>'] = 'open_vsplit',
				},
			},
		},
	},
}
