-- ------------------------------------------
-- Practicalli specific customisations
--
-- Startup dashboard banner
-- `fd` as alternate `ESC` key mapping (better-escape.nvim)
-- Everforest colorscheme
-- Custom global options & key mpapings (via astrocore)
-- ------------------------------------------

-- INFO: Create a `lua/plugins/your-name.lua` for significant changes

-- INFO: Files under `lua/plugins/*.lua` load in alphabetical order,
-- so plugin overrides should be the last file to load

-- INFO: Skip this config if `PRACTICALLI_ASTRO` environment variable set to false
local practicalli = vim.env.PRACTICALLI_ASTRO
if practicalli == "false" then return {} end

---@type LazySpec
return {

  -- ------------------------------------------
  -- Startup Dashboard
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        " ██████╗ ██████╗  █████╗  ██████╗████████╗██╗ ██████╗ █████╗ ██╗     ██╗     ██╗",
        " ██╔══██╗██╔══██╗██╔══██╗██╔════╝╚══██╔══╝██║██╔════╝██╔══██╗██║     ██║     ██║",
        " ██████╔╝██████╔╝███████║██║        ██║   ██║██║     ███████║██║     ██║     ██║",
        " ██╔═══╝ ██╔══██╗██╔══██║██║        ██║   ██║██║     ██╔══██║██║     ██║     ██║",
        " ██║     ██║  ██║██║  ██║╚██████╗   ██║   ██║╚██████╗██║  ██║███████╗███████╗██║",
        " ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝   ╚═╝   ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚══════╝╚═╝",
      }
      return opts
    end,
  },
  -- ------------------------------------------

  -- ------------------------------------------
  -- `fd` alternative to the `ESC` key
  {
    "max397574/better-escape.nvim",
    event = "InsertCharPre",
    opts = {
      timeout = vim.o.timeoutlen,
      default_mappings = true,
      mappings = {
        i = { f = { d = "<Esc>" } },
        c = { f = { d = "<Esc>" } },
        t = { f = { d = "<Esc>" } },
        v = { f = { d = "<Esc>" } },
        s = { f = { d = "<Esc>" } },
      },
    },
  },
  -- ------------------------------------------

  -- ------------------------------------------
  -- Editor tools
  --
  {
    "cappyzawa/trim.nvim",
    opts = {
      -- override default config
      -- ft_blocklist = {"markdown"}, -- filetype not to trim
      -- highlight = true,
      -- highlight_bg = "#800080", -- or 'purple'
    },
  },
  -- ------------------------------------------

  -- ------------------------------------------
  -- AstroCommunity Plugin Options:
  --
  -- Neogit: astrocommunity.git.neogit
  {
    "neogit",
    dependencies = {
      { "nvim-lua/plenary.nvim", "sindrets/diffview.nvim" },
    },
    opts = {
      disable_signs = true, -- duplicate signs if enabled
      -- graph_style = "unicode", -- elegant commit graph
      graph_style = "kitty", -- elegant commit graph
      integrations = { diffview = true },
    },
    keys = {
      -- Neogit status - overrides stage hunk astronvim mapping
      { "<leader>gs", "<cmd>Neogit<cr>", desc = "Status (Neogit)" },
    },
  },

  -- Noice: astrocommunity.utility.noice-nvim
  {
    "noice.nvim",
    opts = function(_, opts)
      local utils = require "astrocore"
      return utils.extend_tbl(opts, {
        presets = {
          lsp_doc_border = true, -- add a border to hover docs and signature help
        },
      })
    end,
  },
  -- nvim-notify controls how messages are displayed
  {
    "rcarriga/nvim-notify",
    opts = {
      top_down = false,
      timeout = 2000, -- shorter display duration, default 3000
      -- log messages level - default 5 (everything), 1 (minimum)
      level = 3,
      -- background_color = "#000000",
    },
  },

  -- Zen-Mode: astrocommunity.editing-support.zen-mode-nvim
  -- https://github.com/folke/zen-mode.nvim#%EF%B8%8F-configuration
  {
    "folke/zen-mode.nvim",
    opts = {
      plugins = {
        options = {
          enabled = true,
        },
        -- Kitty Terminal
        kitty = {
          enabled = true,
          font = "+4", -- font size increment
        },
      },
    },
  },
  -- ------------------------------------------

  -- ------------------------------------------
  -- Vertically aligned menu list
  {
    "folke/which-key.nvim",
    opts = {
      ---@type false | "classic" | "modern" | "helix"
      preset = "helix",
    },
  },
  -- ------------------------------------------

  -- ------------------------------------------
  -- AstroNvim UI Plugin Options
  {
    -- AstroUI provides the basis for configuring the AstroNvim User Interface
    -- Configuration documentation can be found with `:h astroui`
    "AstroNvim/astroui",
    ---@type AstroUIOpts
    opts = {
      colorscheme = "everforest",
    },
  },
  -- Configure Everforest theme
  -- {
  --   "neanias/everforest-nvim",
  --   config = function()
  --     require("everforest").setup {
  --       transparent_background_level = 1,
  --     }
  --   end,
  -- },
  -- ------------------------------------------

  -- ------------------------------------------
  -- AstroNvim LSP Configuration
  -- INFO: Remove to use Mason install of Clojure LSP rather than local install
  -- INFO: Not required once PR merged: https://github.com/mason-org/mason-registry/pull/7896
  -- {
  --   "AstroNvim/astrolsp",
  --   ---@type AstroLSPOpts
  --   opts = {
  --     servers = { "clojure_lsp" }, -- use locally installed Clojure LSP server
  --   },
  -- },
  -- {
  --   "williamboman/mason-lspconfig.nvim",
  --   opts = function(_, opts)
  --     -- Remove clojure_lsp from mason install (added by clojure pack)
  --     opts.ensure_installed = vim.tbl_filter(function(s) return s ~= "clojure_lsp" end, opts.ensure_installed)
  --   end,
  -- },
  -- ------------------------------------------

  -- ------------------------------------------
  -- AstroNvim Core Plugin Options and Key Mappings
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      options = {
        -- configure general options: vim.opt.<key>
        opt = {
          spell = true, -- sets vim.opt.spell
          wrap = true, -- sets vim.opt.wrap
          guifont = "Fira Code:h16", -- neovide font family & size
        },
        -- configure global vim variables: vim.g
        g = {
          -- Neovim lanaguage provides - disable language integration not required
          loaded_node_provider = 0,
          loaded_perl_provider = 0,
          loaded_python3_provider = 0,
          loaded_ruby_provider = 0,

          -- Leader key for Visual-Multi Cursors (Multiple Cursors)
          VM_leader = "gm", -- Visual Multi Leader (multiple cursors - user plugin)

          -- Conjure plugin overrides
          -- comment pattern for eval to comment command
          ["conjure#eval#comment_prefix"] = ";; ",
          -- Hightlight evaluated forms
          ["conjure#highlight#enabled"] = true,

          -- show HUD REPL log at startup
          ["conjure#log#hud#enabled"] = false,

          -- auto repl (babashka)
          ["conjure#client#clojure#nrepl#connection#auto_repl#enabled"] = false,
          ["conjure#client#clojure#nrepl#connection#auto_repl#hidden"] = true,
          ["conjure#client#clojure#nrepl#connection#auto_repl#cmd"] = nil,
          ["conjure#client#clojure#nrepl#eval#auto_require"] = false,

          -- Test runner: "clojure", "clojuresCRipt", "kaocha"
          ["conjure#client#clojure#nrepl#test#runner"] = "kaocha",

          -- Minimise very long lines slow down:
          -- `g:conjure#log#treesitter` false (true by default)
          -- ["conjure#log##treesitter"] = false,
          -- `g:conjure#log#disable_diagnostics` true (disabled) by default
        },
      },
      mappings = {
        n = {
          -- normal mode key bindings
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,

          -- Toggle last open buffer
          ["<Leader><tab>"] = { "<cmd>b#<cr>", desc = "Last tab" },

          -- Save prompting for file name
          ["<Leader>W"] = { ":write ", desc = "Save as file" },

          -- mappings seen under group name "Buffer"
          ["<Leader>b"] = { name = "Buffers" },
          ["<Leader>bt"] = { name = "Tabs" },
          ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<Leader>btn"] = { "<cmd>tabNext<cr>", desc = "Next tab" },
          ["<Leader>bt<tab>"] = { "<cmd>tabprevious<cr>", desc = "Previous tab" },
          -- ["<Leader>bD"] = { "<cmd>Bdelete<cr>", desc = "Delete buffer" },

          -- Find Menu
          -- browse via directory structure, create and modify paths
          ["<Leader>fe"] = { "<cmd>Telescope file_browser<cr>", desc = "Explorer" },
          -- find word for specific file patterns
          ["<Leader>fg"] = {
            "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>",
            desc = "Grep Word",
          },

          -- Projects
          ["<Leader>fp"] = { "<cmd>Telescope projects<cr>", desc = "Projects" },

          -- Editing
          ["zZ"] = { "<cmd>ZenMode<cr>", desc = " Zen mode" },

          -- Git Menu
          -- ["<Leader>gs"] = { "<cmd>Neogit<cr>", desc = " Status (Neogit)" },
          -- ["<Leader>gs"] = false, -- disable git status
          -- ["<Leader>gs"] = { function() require("neogit").open { kind = "tab" } end, desc = " Status (Neogit)" },
          ["<Leader>gH"] = { function() require("gitsigns").stage_hunk() end, desc = "Stage Git hunk" },
          -- Gits.nvim key maps
          ["<Leader>ghg"] = { name = "Gist" },
          ["<Leader>ghgr"] = { "<cmd>GistCreate<cr>", desc = "Gist Region" },
          ["<Leader>ghgg"] = { "<cmd>GistCreateFromFile<cr>", desc = "Gist File" },
          ["<Leader>ghgl"] = { "<cmd>GistsList<cr>", desc = "List Gists" },
        },
        t = {
          -- terminal mode key bindings
        },
        v = {
          -- visual mode key bindings
        },
      },
    },
  },
  -- ------------------------------------------
}
