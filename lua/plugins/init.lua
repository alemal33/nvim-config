local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
		vim.cmd 'packadd packer.nvim'
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

-- Get config file
local function get(name)
	require('plugins.' .. name)
end

return require('packer').startup(function(use)

	-- Package manager
	use 'wbthomason/packer.nvim'
	use { 'williamboman/mason.nvim', config = get('mason') }

	-- Telescope
	use {
		'nvim-telescope/telescope.nvim', branch = '0.1.x',
		requires = { 'nvim-lua/plenary.nvim' },
		config = get('telescope')
	}
	use 'natecraddock/telescope-zf-native.nvim'

	-- Git
	use { 'lewis6991/gitsigns.nvim', config = get('gitsigns') }
	use { 'sindrets/diffview.nvim', config = get('diffview') }

	-- Lsp
	use { 'williamboman/mason-lspconfig.nvim', config = get('lspconfig') }
	use 'neovim/nvim-lspconfig'

	-- UI
	use 'kyazdani42/nvim-web-devicons'
	use { 'nvim-lualine/lualine.nvim', config = get('lualine') }
	use { 'navarasu/onedark.nvim', config = get('onedark') }

	use { 'ethanholz/nvim-lastplace', config = require('nvim-lastplace').setup() }
	use { 'numToStr/Comment.nvim', config = get('comment') }

	use 'nvim-treesitter/nvim-treesitter'
	use 'nvim-lua/plenary.nvim'

	use {'windwp/nvim-autopairs', config = require('nvim-autopairs').setup() }

	if packer_bootstrap then
		require('packer').sync()
	end
end)
