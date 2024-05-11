vim.g.mapleader = " "
vim.g.swapfile = false
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

local config = require("nvim-treesitter.configs")
config.setup({
    ensure_installed = {"python", "go", "lua", "rust", "vim"},
    highlight = {enable = true},
    indent = {enable = true},

})


vim.keymap.set('n', '<leader>e', ':Neotree filesystem reveal left<CR>', {})
