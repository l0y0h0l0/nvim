-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup({
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
  renderer = {
    icons = {
      webdev_colors = true,
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
        modified = true,
      },
    },
  },
  filters = {
    dotfiles = false,
  },
  git = {
    ignore = false,
  },
})
