local null_ls = require('null-ls')

require('mason-null-ls').setup({
  ensure_installed = {
    'gofumpt',
    'clang_format',
  },
  automatic_installation = false,
  automatic_setup = true,
  handles = {
    function(source_name, methods)
      require('mason-null-ls').default_setup(source_name, methods)
    end,
    stylua = function(source_name, methods)
      null_ls.register(null_ls.builtins.formatting.stylua)
    end,
  }
})

