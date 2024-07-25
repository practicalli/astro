-- ------------------------------------------
-- Clojure Development support - manual configuration
--
-- Example plugin configurations to create a customised Clojure workflow
-- clojure-lsp server via mason
-- treesitter clojure parser
-- ts-comment.nvim with `;;` and `;` support
-- structured editing with parinfer and treesitter-sexp plugins
-- REPL connected editor with Conjure plugin (log HUD hidden by default)
--
-- NOTE: disable AstroCommunity Clojure Pack in `community.lua`
-- before using this configuration
-- ------------------------------------------

if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Local variables
-- Language filetypes for plugins
local lisp_dialects = { "clojure", "fennel" }

---@type LazySpec
return {
  -- Ensure Language Server installed
  {
    "williamboman/mason-lspconfig.nvim",
    optional = true,
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "clojure_lsp" })
    end,
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    optional = true,
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "clojure-lsp" })
    end,
  },
  -- Treesitter Clojure parser
  {
    "nvim-treesitter/nvim-treesitter",
    optional = true,
    opts = function(_, opts)
      if opts.ensure_installed ~= "all" then
        opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "clojure" })
      end
    end,
  },

  -- Comments
  { "numToStr/Comment.nvim", enabled = false },
  { "JoosepAlviste/nvim-ts-context-commentstring", enabled = false },
  {
    "folke/ts-comments.nvim",
    opts = {},
    event = "VeryLazy",
    enabled = vim.fn.has "nvim-0.10.0" == 1,
  },

  -- Structural Editing
  -- Parinfer Alignment driven structured editing for Clojure and more
  -- ["clojure", "scheme", "lisp", "racket", "hy", "fennel", "janet", "carp", "wast", "yuck"]
  {
    "gpanders/nvim-parinfer",
    filetype = lisp_dialects,
    dependencies = {
      "AstroNvim/astrocore",
      opts = {
        indent = {
          -- fix indentation of nodes operated upon
          -- enabled = false,
          -- custom indentation function called after a slurp/barf
          -- indentor = require("nvim-paredit.indentation.native").indentor,
        },
        options = {
          g = {
            parinfer_force_balance = true,
            parinfer_comment_chars = { ";", ";;" },
            -- "smart", "indent" or "paren" mode - https://shaunlebron.github.io/parinfer/#writing-with-parinfer
            parinfer_mode = "smart",
          },
        },
        keys = {
          -- Toggle Parinfer on/off (globally)
          { "<Leader>TP", "<cmd>ParinferOn! <cr>", desc = "Toggle Parinfer" },
        },
      },
    },
  },
  {
    "PaterJason/nvim-treesitter-sexp",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    ft = { "clojure", "fennel", "janet", "query" },
    cmd = "TSSexp",
    opts = {},
  },

  -- Paredit paren wrangling
  -- {
  --   "julienvincent/nvim-paredit",
  --   filetype = lisp_dialects,
  --   dependencies = {
  --     "AstroNvim/astrocore",
  --     opts = {
  --       options = {
  --         g = {},
  --       },
  --       mappings = {
  --         n = {
  --           -- normal mode key bindings
  --           -- setting a mapping to false will disable it
  --           -- ["<esc>"] = false,
  --         },
  --         t = {
  --           -- terminal? mode key bindings
  --         },
  --         v = {
  --           -- visual mode key bindings
  --         },
  --       },
  --     },
  --   },
  -- },
  -- Paredit & Parinfer together
  -- {
  --   "dundalek/parpar.nvim",
  --   filetype = lisp_dialects,
  --   dependencies = {
  --     "AstroNvim/astrocore",
  --     "gpanders/nvim-parinfer",
  --     "julienvincent/nvim-paredit",
  --     opts = {
  --       options = {
  --         g = {},
  --       },
  --       mappings = {
  --         n = {
  --           -- normal mode key bindings
  --           -- setting a mapping to false will disable it
  --           -- ["<esc>"] = false,
  --         },
  --         t = {
  --           -- terminal? mode key bindings
  --         },
  --         v = {
  --           -- visual mode key bindings
  --         },
  --       },
  --     },
  --   },
  -- },
  -- REPL workflow with Conjure
  {
    "Olical/conjure",
    -- load plugin on filetypes
    filetype = lisp_dialects,
    dependencies = {
      "AstroNvim/astrocore",
      opts = {
        options = {
          g = {
            -- INFO: `:help conjure-client-clojure-nrepl-configuration` for Conjure Clojure options

            -- Width of HUD as percentage of the editor width between 0.0 and 1.0. Default: `0.42`
            ["conjure#log#hud#width"] = 1,
            -- Display HUD (REPL log). Default: `true`
            ["conjure#log#hud#enabled"] = false,
            -- HUD corner position (over-ridden by HUD cursor detection). Default: `"NE"`
            -- Example: Set to `"SE"` and HUD width to `1.0` for full width HUD at bottom of screen
            ["conjure#log#hud#anchor"] = "SE",
            -- Open log at bottom or far right of editor, using full width or height. Default: `false`
            ["conjure#log#botright"] = true,
            -- Lines from top of file to check for `ns` form, to sett evaluation context Default: `24`
            -- `b:conjure#context` to override a specific buffer that isn't finding the context
            ["conjure#extract#context_header_lines"] = 100,
            -- comment pattern for eval to comment command
            ["conjure#eval#comment_prefix"] = ";; ",
            -- Hightlight evaluated forms
            ["conjure#highlight#enabled"] = true,
            -- Start "auto-repl" process when nREPL connection not found, e.g. babashka. ;; Default: `true`
            ["conjure#client#clojure#nrepl#connection#auto_repl#enabled"] = false,
            -- Hide auto-repl buffer when triggered. Default: `false`
            ["conjure#client#clojure#nrepl#connection#auto_repl#hidden"] = true,
            -- Command to start the auto-repl. Default: `"bb nrepl-server localhost:8794"`
            ["conjure#client#clojure#nrepl#connection#auto_repl#cmd"] = nil,
            -- Ensure namespace required after REPL connection. Default: `true`
            ["conjure#client#clojure#nrepl#eval#auto_require"] = false,
            -- suppress `; (out)` prefix in log evaluation results
            ["conjure#client#clojure#nrepl#eval#raw_out"] = true,
            -- test runner "clojure" (clojure.test) "clojurescript" (cljs.test) "kaocha"
            ["conjure#client#clojure#nrepl#test#runner"] = "clojure",
          },
        },
      },
    },
  },
}
