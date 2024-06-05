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
        clangd = {},
        lua_ls = {},
        rust_analyzer = {},
        r_language_server = {},
    },

    inlay_hints = {
        enabled = true,
    },
      
    })
  end

  }
