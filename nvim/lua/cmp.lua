vim.pack.add({
    {src = "http://github.com/saghen/blink.cmp", version = "v1.7.0"},
})

require "blink.cmp".setup({
    keymap = { preset = 'super-tab' },
    fuzzy = { 
        implementation = "prefer_rust",
        prebuilt_binaries = {
            force_version = "v1.7.0",
        }
    },
    sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
    },
})

