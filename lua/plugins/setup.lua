-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out,                            "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)


local plugins = {
  'wbthomason/packer.nvim',
  -- My plugins here
  -- theme
  'cpea2506/one_monokai.nvim',

  'kyazdani42/nvim-web-devicons',
  {
    -- statusline
    'nvim-lualine/lualine.nvim',
    -- statusline icon
    dependencies = { 'kyazdani42/nvim-web-devicons', opt = true },
  },

  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      -- optional, for file icons
      'nvim-tree/nvim-web-devicons',
    },
  },

  'nvim-treesitter/nvim-treesitter',
  'p00f/nvim-ts-rainbow',

  -- lsp
  {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  },

  'kkharji/lspsaga.nvim',

  -- formatter
  {
    'jose-elias-alvarez/null-ls.nvim',
    'jay-babu/mason-null-ls.nvim',
  },

  -- cmp
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  -- snippets引擎，不装这个自动补全会出问题
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  'rafamadriz/friendly-snippets',
  -- file path
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-cmdline',

  'windwp/nvim-autopairs',
  'akinsho/bufferline.nvim',
  'lewis6991/gitsigns.nvim',

  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    dependencies = { { 'nvim-lua/plenary.nvim' } },
  },

  {
    'akinsho/toggleterm.nvim',
  },
  'xiyaowong/nvim-transparent',
  'lukas-reineke/indent-blankline.nvim',
  {
    'folke/noice.nvim',
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    }
  },

  'folke/which-key.nvim',

  -- DAP
  'mfussenegger/nvim-dap',
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { 'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio' }
  },
  'theHamsta/nvim-dap-virtual-text',

  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  },

  'folke/flash.nvim',
}


require('lazy').setup({
  spec = plugins,
  checker = {
    enabled = true,
  },
})
