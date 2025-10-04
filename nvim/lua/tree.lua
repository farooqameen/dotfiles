vim.pack.add({ 
    {src = 'https://github.com/nvim-neo-tree/neo-tree.nvim'},
    {src = 'https://github.com/nvim-lua/plenary.nvim'},
    {src = 'https://github.com/MunifTanjim/nui.nvim'},
    {src = 'https://github.com/nvim-tree/nvim-web-devicons'},
})

require "neo-tree".setup({
    event_handlers = {
        {
            event = "file_open_requested",
            handler = function()
                require("neo-tree.command").execute({ action = "close" })
            end,
        },
    },
    window = {
        mappings = {
            ['e'] = function() vim.api.nvim_exec('Neotree focus filesystem left', true) end,
            ['b'] = function() vim.api.nvim_exec('Neotree focus buffers left', true) end,
            ['g'] = function() vim.api.nvim_exec('Neotree focus git_status left', true) end,
        },
    },
})


