vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.tabstop = 4
vim.o.swapfile = false
vim.o.background = "dark"

vim.pack.add({
		{src = "https://github.com/EdenEast/nightfox.nvim"},
		{src = "https://github.com/nanotech/jellybeans.vim"},
		{src = "http://github.com/bluz71/vim-moonfly-colors"},
})

vim.cmd("colorscheme moonfly")
