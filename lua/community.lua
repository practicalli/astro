-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

-- Plugin config overrides should be in a `lua/plugins/*.lua` of a matching name
-- or in a user config, e.g. `lua/plugins/user-practicalli.lua`

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

  -- Multiple Cursors
  -- `gm` VM_Leader set in astrocore plugin
  { import = "astrocommunity.editing-support.vim-visual-multi" },

  -- Distraction free editing
  { import = "astrocommunity.editing-support.zen-mode-nvim" },
  -- ----------------------------------------------

  -- ----------------------------------------------
  -- Packs
  -- Treesitter: clojure , Lsp: clojure-lsp, Lint/format:
  { import = "astrocommunity.pack.clojure" },
  -- Disable plugins contained in the clojure pack
  -- { "nvim-parinfer", enabled = false },
  -- { "nvim-treesitter-sexp", enabled = false },

  { import = "astrocommunity.pack.json" },
  -- ----------------------------------------------

  -- ----------------------------------------------
  -- Project

  -- switch between projects (AstroNvim provides router)
  -- { import = "astrocommunity.project.project-nvim" },

  -- Search and replace across projects
  { import = "astrocommunity.search.nvim-spectre" },
  -- ----------------------------------------------

  -- ----------------------------------------------
  -- Source Control
  -- Neogit interactive git client
  { import = "astrocommunity.git.neogit" },

  -- Manage GitHub Gists
  -- Keymaps defined in `lua/plugins/practicalli.lua`
  { import = "astrocommunity.git.gist-nvim" },

  -- Open in GitHub / GitLab websites
  { import = "astrocommunity.git.gitlinker-nvim" },

  -- GitHub Pull Requests and Issues
  -- Octo plugin configured in `lua/plugins/github.lua`
  -- ----------------------------------------------

  -- ----------------------------------------------
  -- Utility
  -- rich command prompt
  { import = "astrocommunity.utility.noice-nvim" },

  -- word search in specific file patterns
  { import = "astrocommunity.utility.telescope-live-grep-args-nvim" },
  -- ----------------------------------------------

  -- ----------------------------------------------
  -- Terminal Integration
  { import = "astrocommunity.terminal-integration.flatten-nvim" },
  -- ----------------------------------------------

  -- ----------------------------------------------
  -- GUI
  -- Neovide GUI - scaling functions & key mappings
  { import = "astrocommunity.recipes.neovide" },
  -- ----------------------------------------------
}
