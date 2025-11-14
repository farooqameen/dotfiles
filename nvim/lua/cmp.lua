vim.pack.add({
    {src = "https://github.com/saghen/blink.cmp", version = "v1.7.0"},
    {src = "https://github.com/rafamadriz/friendly-snippets"},
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

vim.api.nvim_create_autocmd('BufEnter', {
  pattern = '*.md',
  callback = function()
    vim.b.completion = false
  end,
})

