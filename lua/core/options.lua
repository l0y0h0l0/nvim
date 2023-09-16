local opt = vim.opt

-- theme
-- vim.cmd[[colorscheme one_monokai]]
theme = 'one_monokai'

-- encoding
vim.scriptencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'

-- line numbers
opt.number = true
opt.relativenumber = true

-- indention
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- listcahrs
opt.list = true
opt.listchars = 'space:·'

-- wrap
opt.wrap = false

-- cursor
opt.cursorline = true

-- clip
--opt.clipboard:append("unnamedplus")
--if vim.fn.has('wsl') == 1 then
--  vim.api.nvim_create_autocmd('TextYankPost', {
--    group = vim.api.nvim_create_augroup('Yank', { clear = true }),
--    callback = function()
--      vim.fn.system('clip.exe', vim.fn.getreg('"'))
--    end,
--  })
--end

-- search
opt.ignorecase = true
opt.smartcase = true

-- appearance
opt.termguicolors = true
opt.signcolumn = "yes"

-- split window
opt.splitright = true
opt.splitbelow = true

