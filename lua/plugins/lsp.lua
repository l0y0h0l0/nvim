local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")
local on_attach = lspconfig.on_attach

lspconfig.lua_ls.setup {
  capabilities = capabilities,
}

lspconfig.clangd.setup {
  capabilities = capabilities,
}

lspconfig.gopls.setup {
  capabilities = capabilities,
}

lspconfig.rust_analyzer.setup {
  capabilities = capabilities,
}

lspconfig.vimls.setup {
  capabilities = capabilities,
}

lspconfig.cmake.setup {
  capabilities = capabilities,
}
