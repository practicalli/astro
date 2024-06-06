-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  -- Test changes in local fork of astrocommunity in ~/project/astrocommunity
  -- { "AstroNvim/astrocommunity", dev = true },
  -- Or specify path to Astrocommunity fork
  -- { dir = "~/projects/community/neovim/astrocommunity" },

  -- Include Lua language pack
  { import = "astrocommunity.pack.lua" },
  --
  -- ----------------------------------------------
  -- themes and color
  { import = "astrocommunity.colorscheme.everforest" },
  -- color picker and highlighter
  { import = "astrocommunity.color.ccc-nvim" },
  -- ----------------------------------------------

  -- ----------------------------------------------
  -- Motion plugins
  -- :help nvim-surround.usage.
  { import = "astrocommunity.motion.nvim-surround" },
  -- ----------------------------------------------

  -- ----------------------------------------------
  -- Editor support
  -- Rainbow parens
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  -- Regular Expressions explained
  { import = "astrocommunity.editing-support.nvim-regexplainer" },

  -- Multiple Cusors
  -- `gm` VM_Leader set in astrocore plugin
  { import = "astrocommunity.editing-support.vim-visual-multi" },

  -- Distraction free editing
  { import = "astrocommunity.editing-support.zen-mode-nvim" },
  {
    "folke/zen-mode.nvim",
    opts = {
      -- override default configuration
      -- https://github.com/folke/zen-mode.nvim#%EF%B8%8F-configuration
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
  -- ----------------------------------------------

  -- ----------------------------------------------
  -- Packs
  -- Treesitter: clojure , Lsp: clojure-lsp, Lint/format:
  { import = "astrocommunity.pack.clojure" },
  -- ----------------------------------------------

  -- ----------------------------------------------
  -- Project

  -- switch between projects (AstroNvim provides router)
  -- { import = "astrocommunity.project.project-nvim" },

  -- Search and replace across projects
  { import = "astrocommunity.project.nvim-spectre" },
  -- ----------------------------------------------

  -- ----------------------------------------------
  -- Source Control
  -- Neogit interactive git client
  { import = "astrocommunity.git.neogit" },
  -- overrides: add diffview and key mappings
  {
    "NeogitOrg/neogit",
    dependencies = {
      { "nvim-lua/plenary.nvim", "sindrets/diffview.nvim" },
    },
    opts = {
      disable_commit_confirmation = true,
      -- disable_builtin_notifications = false,
      disable_signs = true, -- duplicate signs if enabled
      use_magit_keybindings = true,
      integrations = {
        diffview = true,
      },
    },
    keys = {
      -- Neogit status - overrides stage hunk astronvim mapping
      { "<leader>gs", "<cmd>Neogit<cr>", desc = "Status (Neogit)" },
    },
  },
  -- Manage GitHub Gists
  -- Keymaps defined in `lua/plugins/practicalli.lua`
  { import = "astrocommunity.git.gist-nvim" },

  -- GitHub Pull Requests and Issues
  -- Octo plugin configured in `lua/plugins/github.lua`
  -- ----------------------------------------------

  -- ----------------------------------------------
  -- Utility
  -- rich command prompt
  { import = "astrocommunity.utility.noice-nvim" },
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
  -- Override notification display defaults
  {
    "rcarriga/nvim-notify",
    opts = {
      top_down = false,
      timeout = 1000, -- shorter display duration, default 1000
      -- log messages level - default 5 (everything), 1 (minimum)
      level = 3,
      -- background_color = "#000000",
    },
  },
  -- ----------------------------------------------

  -- ----------------------------------------------
  -- GUI
  -- Neovide GUI - scaling functions & key mappings
  { import = "astrocommunity.recipes.neovide" },
  -- ----------------------------------------------
}
