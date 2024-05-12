return {
	{"williamboman/mason.nvim",
     config = function()
	require("mason").setup()
	end
	},
	
	{
	"williamboman/mason-lspconfig.nvim",
	config = function()
		require("mason-lspconfig").setup({
			ensure_installed = {"rust_analyzer", "lua_ls", "gopls", "pyright",},
			highlight = { true },
			indent = {true}, 
		})
		end
	},
	
	{
 	"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.rust_analyzer.setup({})
			lspconfig.pyright.setup({})
			lspconfig.gopls.setup({})
		end
	}


}