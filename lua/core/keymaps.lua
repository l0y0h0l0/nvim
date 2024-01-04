vim.g.mapleader = ';'

local keymap = vim.keymap
local opt = vim.opt

---------- plugins ----------
-- nvim tree
keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>')
-- buffer line
keymap.set('n', '<c-l>', '<cmd>bnext<cr>')
keymap.set('n', '<c-h>', '<cmd>bprevious<cr>')

keymap.set({'n'}, '<leader>q', '<cmd>q!<cr>')
keymap.set({'n'}, '<leader>s', '<cmd>w<cr>')
keymap.set({'n'}, '<leader>wq', '<cmd>wq<cr>')

---------- custom ----------
function _G.triggerWrap()
  if opt.wrap:get() then
    vim.cmd('set nowrap')
  else
    vim.cmd('set wrap')
  end
end

keymap.set({'n'}, '<leader>w', '<cmd>lua triggerWrap()<cr>')
