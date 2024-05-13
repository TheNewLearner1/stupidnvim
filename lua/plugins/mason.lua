return {
  {
    "williamboman/mason.nvim",
    config = function()
      require('mason')
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require("mason-lspconfig")
      lspconfig.setup{
        ensure_installed = {"pyright", "lua_ls", "gopls", "rust_analzyer"},
      }
      lspconfig.rust_analyzer.setup {}
      lspconfig.lua_ls.setup{}
      lspconfig.pyright.setup {}
      lspconfig.gopls.setup {}
    end
  }
}
