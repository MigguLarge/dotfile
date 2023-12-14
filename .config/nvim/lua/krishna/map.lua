-- vim
vim.g.mapleader = ' '
vim.keymap.set('n', '<Leader>e', '<cmd>Ex<cr>')
vim.keymap.set('n', '<Leader>[', '<cmd>bprev<cr>')
vim.keymap.set('n', '<Leader>]', '<cmd>bnext<cr>')
vim.keymap.set('n', '<Leader>w', '<cmd>bdelete<cr>')
vim.keymap.set('n', '<leader>s', '<cmd>w<cr>')
vim.keymap.set('i', '<C-C>', '<esc>') -- Now we can use CTRL+C in insert mode instead of that shame lil esc
vim.keymap.set('n', '<c-d>', '<c-d>zz') -- ⎤ Automatically align view to be cursor at center after down/up half page
vim.keymap.set('n', '<c-u>', '<c-u>zz') -- ⎦ 
vim.keymap.set('i', 'jk', '<C-C>')
