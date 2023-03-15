local keymap = vim.keymap

---------- plugins ----------
-- nvim tree
keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>')
-- buffer line
keymap.set('n', '<c-l>', '<cmd>bnext<cr>')
keymap.set('n', '<c-h>', '<cmd>bprevious<cr>')
