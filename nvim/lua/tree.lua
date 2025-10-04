vim.pack.add({ 
    {src = 'https://github.com/nvim-neo-tree/neo-tree.nvim'},
    {src = 'https://github.com/nvim-lua/plenary.nvim'},
    {src = 'https://github.com/MunifTanjim/nui.nvim'},
    {src = 'https://github.com/nvim-tree/nvim-web-devicons'},
})

require "neo-tree".setup({})
