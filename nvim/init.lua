vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = true
vim.o.signcolumn = "number"

vim.o.swapfile = false
vim.o.background = NONE
vim.o.timeoutlen = 800
vim.g.mapleader = ' '

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.listchars = 'tab:-->,space:\u{00b7}' -- unicode for Middle Dot / interpunct
vim.o.list = true

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
})

vim.lsp.enable({"pylsp", "ruff"})

require "mini.pick".setup()
require "mini.surround".setup({
    search_method = "cover_or_next",
})
require "mini.cursorword".setup({
    delay = 0,
})
require "mini.pairs".setup()
require("cmp")
require("tree")
require("clipboard")
require("keymaps")

vim.diagnostic.config({
    virtual_text = {true, prefix = "\u{00b7}"}
})

-- todo: add fzf-lua for better grep

vim.cmd("colorscheme moonfly")
vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
vim.cmd("highlight LineNr guibg=NONE ctermbg=NONE")
vim.cmd("highlight signcolumn guibg=NONE ctermbg=NONE")
