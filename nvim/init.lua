vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = true

vim.o.swapfile = false
vim.o.background = NONE
vim.o.timeoutlen = 800
vim.g.mapleader = ' '

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.listchars = 'tab:-->,space:\\u00b7' -- unicode for Middle Dot / interpunct
vim.o.list = true

require("clipboard")

local autocmd = vim.api.nvim_create_autocmd
autocmd("Filetype", {
    pattern = "*",
    callback = function()
        vim.opt_local.formatoptions:remove { 'c', 'r', 'o' }
    end,
})

vim.pack.add({
    {src = "http://github.com/bluz71/vim-moonfly-colors"},
    {src = "https://github.com/nvim-mini/mini.nvim.git"},
    {src = "https://github.com/neovim/nvim-lspconfig"},
    {src = "https://github.com/tpope/vim-surround"},
})

-- todo: configure pylsp
  
require "mini.pick".setup()
require("keymaps")

vim.cmd("colorscheme moonfly")
vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
vim.cmd("highlight LineNr guibg=NONE ctermbg=NONE")
