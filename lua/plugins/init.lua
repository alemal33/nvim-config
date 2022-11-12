local function include(name)
	require('plugins.' .. name)
end

include('packer')

include('lastplace')
include('onedark')
