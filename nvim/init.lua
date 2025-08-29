vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.swapfile = false
vim.o.background = "dark"
vim.o.timeoutlen = 800
vim.g.mapleader = ' '
vim.o.clipboard = "unnamedplus"


vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')

vim.keymap.set('i', 'jj', '<ESC>')

vim.pack.add({
		{src = "https://github.com/EdenEast/nightfox.nvim"},
		{src = "https://github.com/nanotech/jellybeans.vim"},
		{src = "http://github.com/bluz71/vim-moonfly-colors"},
})

vim.cmd("colorscheme moonfly")
