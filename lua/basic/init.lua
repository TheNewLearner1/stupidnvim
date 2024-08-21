vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

vim.opt.swapfile = false

vim.keymap.set('n', '-', "<cmd>q!<CR>", {})

vim.keymap.set('n', '=', "<cmd>wa<CR>", {})
vim.keymap.set('n', '<leader>z', vim.cmd.Ex)
