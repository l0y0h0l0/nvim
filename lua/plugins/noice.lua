require('noice').setup {
  messages = {
    enable = false,
  },
  lsp = {
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true,
    },
  },
  presets = {
    lsp_doc_border = true,
  },
}

require('notify').setup {
  render = 'minimal',
  background_colour = "#000000",
}
