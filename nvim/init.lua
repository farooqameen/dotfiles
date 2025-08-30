vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = true

vim.o.tabstop = 4
vim.o.shiftwidth = 4
-- vim.o.expandtab = true

vim.o.swapfile = false
vim.o.background = NONE
vim.o.timeoutlen = 800
vim.g.mapleader = ' '

vim.o.clipboard = 'unnamedplus'
vim.g.clipboard = {
    name = 'WslClipboard',
    copy = {
        ['+'] = 'clip.exe',
        ['*'] = 'clip.exe',
    },
    paste = {
        ['+'] = 'powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
        ['*'] = 'powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    },
    cache_enabled = 0,
}

local autocmd = vim.api.nvim_create_autocmd
autocmd("Filetype", {
    pattern = "*",
    callback = function()
        vim.opt_local.formatoptions:remove { 'c', 'r', 'o' }
    end,
})

vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')

vim.keymap.set('i', 'jj', '<ESC>')

vim.pack.add({
    {src = "https://github.com/EdenEast/nightfox.nvim"},
    {src = "https://github.com/nanotech/jellybeans.vim"},
    {src = "http://github.com/bluz71/vim-moonfly-colors"},
    {src = "https://github.com/nvim-mini/mini.nvim.git"},
})

require "mini.pick".setup()
vim.keymap.set('n', '<leader>f', ':Pick files<CR>')
vim.keymap.set('n', '<leader>h', ':Pick help<CR>')

vim.cmd("colorscheme moonfly")
vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
vim.cmd("highlight LineNr guibg=NONE ctermbg=NONE")
