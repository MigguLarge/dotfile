vim.keymap.set('n', '<Leader>m', '<cmd>lua require("harpoon.mark").add_file()<cr>')
vim.keymap.set('n', '<Leader>h', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>')
vim.keymap.set('n', '<Leader>a', '<cmd>lua require("harpoon.ui").nav_file(1)<cr>')
vim.keymap.set('n', '<Leader>s', '<cmd>lua require("harpoon.ui").nav_file(2)<cr>')
vim.keymap.set('n', '<Leader>d', '<cmd>lua require("harpoon.ui").nav_file(3)<cr>')
vim.keymap.set('n', '<Leader>f', '<cmd>lua require("harpoon.ui").nav_file(4)<cr>')

