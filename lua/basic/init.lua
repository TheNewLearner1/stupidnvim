vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "



vim.keymap.set('n', '<leader>qqq', "<cmd>q!<CR>", {})


vim.keymap.set('n', '<leader>w', "<cmd>w<CR>", {})
vim.keymap.set('n', '<leader>z', vim.cmd.Ex)
