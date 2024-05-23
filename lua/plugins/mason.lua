return {
  {
  "williamboman/mason.nvim",
  config = function()
    require("mason").setup()
  end
  },
  {
  "williamboman/mason-lspconfig.nvim",
  config = function()
      require("mason-lspconfig").setup{
        ensure_install = {"lua_ls", "rust_analyzer", "pyright", "gopls"},
      }
    end
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
  

      

    end
  },
}
