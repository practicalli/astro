-- Practicalli Termux Config
--
-- Configure local LSP language servers to be run locallh
-- as mason install fails on termux
-- Clojure LSP
-- Lua LSP

--!TODO: add conditional to only load config ig running on Termux
-- local not_termux = not (vim.env.OSTYPE ==  "linux-android")^"
-- if not_termux then return {}


if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroLSP allows you to customize the features in AstroNvim's LSP configuration engine
-- Configuration documentation can be found with `:h astrolsp`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  -- Disable locally installed LSP language servers
  {
    "williamboman/mason-lspconfig.nvim",
     opts = function(_, opts)
       opts.ensure_installed = vim.tbl_filter(function(s) return s ~= "lua_ls" end, opts.ensure_installed)
     end
  },

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
        'clojure_lsp',
        'lua_ls',
      },
    },
  },
}
