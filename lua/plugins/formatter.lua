local null_ls = require('null-ls')

require('mason-null-ls').setup({
  ensure_installed = {
    'gofumpt',
    'clang_format',
  },
  automatic_installation = false,
  automatic_setup = true,
})

require 'mason-null-ls'.setup_handlers {
  function(source_name, methods)
    require("mason-null-ls.automatic_setup")(source_name, methods)
  end,
  stylua = function(source_name, methods)
    null_ls.register(null_ls.builtins.formatting.stylua)
  end,
}
