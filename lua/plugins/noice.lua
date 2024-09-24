return {
  "folke/noice.nvim",
  opts = function(_, opts)
    opts.lsp = opts.lsp or {}
    opts.lsp.signature = {
      enabled = false,
    }
    return opts
  end,
}
