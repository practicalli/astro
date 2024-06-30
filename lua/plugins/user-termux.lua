-- Practicalli Termux User Overrides
--
-- Configure local LSP language servers to be run locally
-- as mason install fails on termux
-- Clojure LSP server
-- Lua Language server

-- INFO: conditional only loads config if
-- `OS_TERMUX` is true
--
local termux = vim.env.OS_TERMUX
if not termux then return {} end

---@type LazySpec
return {
  -- INFO: prevent Mason loading Clojure & Lua LSP servers
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts.ensure_installed = vim.tbl_filter(function(s) return s ~= "lua_ls" end, opts.ensure_installed)
      opts.ensure_installed = vim.tbl_filter(function(s) return s ~= "clojure_lsp" end, opts.ensure_installed)
    end,
  },

  -- INFO: Use local Clojure & Lua LSP servers
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      -- Configuration table of features provided by AstroLSP
      features = {
        autoformat = true, -- enable or disable auto formatting on start
        codelens = true, -- enable/disable codelens refresh on start
        inlay_hints = false, -- enable/disable inlay hints on start
        semantic_tokens = true, -- enable/disable semantic token highlighting
      },
      -- enable servers that you already have installed without mason
      servers = {
        -- "pyright"
        "clojure_lsp",
        "lua_ls",
      },
    },
  },

  -- INFO: Pin Neogit for Neovim 0.9.x
  -- {
  --   "NeogitOrg/neogit",
  --   tag = "v0.0.1",
  -- },

  -- Commenting for Neovim 0.9.0
  { "numToStr/Comment.nvim", enabled = true },
  { "JoosepAlviste/nvim-ts-context-commentstring", enabled = true },
}
