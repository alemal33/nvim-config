local function include(name)
	require('plugins.' .. name)
end

include('packer')

include('lastplace')
include('onedark')
include('comment')
include('telescope')
include('gitsigns')
include('mason')
include('lspconfig')
include('lualine')
