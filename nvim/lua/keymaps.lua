vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

vim.keymap.set('i', 'jj', '<ESC>')
vim.keymap.set('n', '<leader>x', ':quit!<CR>')
vim.keymap.set('n', '<Enter>', 'o<ESC>')
vim.keymap.set('n', '<leader><Enter>', 'O<ESC>')
vim.keymap.set('n', '<leader>/', ':nohlsearch<CR>')

-- disable <leader>f
-- this avoids entering operator-pending mode
vim.keymap.set('n', '<leader>f', '<Nop>')

vim.keymap.set('n', '<leader>ff', ':Pick files<CR>')
vim.keymap.set('n', '<leader>h', ':Pick help<CR>')
vim.keymap.set('n', '<leader>fb', ':Pick buffers<CR>')

vim.keymap.set('n', '<leader>t', ':Neotree<CR>')

vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)

