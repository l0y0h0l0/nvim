--local on_attach = function(client, bufnr)
--  -- Enable completion triggered by <c-x><c-o>
--  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
--
--  -- Mappings.
--  -- See `:help vim.lsp.*` for documentation on any of the below functions
--  local bufopts = { noremap = true, silent = true, buffer = bufnr }
--  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
--  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
--  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
--  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
--  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
--  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
--  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
--  vim.keymap.set('n', '<space>wl', function()
--    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
--  end, bufopts)
--  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
--  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
--  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
--  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
--  vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
--end

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")

lspconfig.util.default_config.capabilities = capabilities;

lspconfig.lua_ls.setup {
--  on_attach = on_attach,
}

lspconfig.clangd.setup {
--  on_attach = on_attach,
  capabilities = { offsetEncoding = { 'utf-16' } },
}

lspconfig.gopls.setup {
--  on_attach = on_attach,
}

lspconfig.rust_analyzer.setup {
--  on_attach = on_attach,
}

lspconfig.vimls.setup {}
