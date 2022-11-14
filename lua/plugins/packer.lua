local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd 'packadd packer.nvim'
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use 'ethanholz/nvim-lastplace'
	use 'navarasu/onedark.nvim'
	use 'numToStr/Comment.nvim'

	use {
		'nvim-telescope/telescope.nvim', branch = '0.1.x',
		requires = { 'nvim-lua/plenary.nvim' }
	}
	use 'natecraddock/telescope-zf-native.nvim'
	use 'nvim-treesitter/nvim-treesitter'
	use 'nvim-lua/plenary.nvim'
	use 'kyazdani42/nvim-web-devicons'

	use 'lewis6991/gitsigns.nvim'
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig'
	use 'nvim-lualine/lualine.nvim'

	if packer_bootstrap then
		require('packer').sync()
	end
end)
