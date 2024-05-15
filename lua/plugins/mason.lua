return {
  {
    require("williamboman/mason.nvim"),
    lazy = false, 
    config = function()
      require("mason").setup()
    end,
  },
  {
    require("williamboman/maosn-lspconfig.nvim"),
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    require("neovim/lsp-config"), 
    lazy = false, 
    config = function()
      local capabilities = require("cmp_nvim_lsp").dafault_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.rust_analyzer.setup({ capabilites = capabilities})
      lspconfig.lua_ls.setup({ capabilities = capabilities})
      lspconfig.pyright.setup({ capabilities = capabilities})
      lspconfig.gopls.setup({ capabilities = capabilities})
      
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<leader>gr', vim.lsp.buf.reference, {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})


      
    end


    },
}
