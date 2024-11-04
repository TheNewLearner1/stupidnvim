return {
    'junnplus/lsp-setup.nvim',
    dependencies = {
        'neovim/nvim-lspconfig',
        'williamboman/mason.nvim', -- optional
        'williamboman/mason-lspconfig.nvim', -- optional
    },
  config = function()
    require('lsp-setup').setup({
    servers = {
        pyright = {},
        lua_ls = {},
        rust_analyzer = {},
    },

    inlay_hints = {
        enabled = true,
    },
      
    })
  end

  }
