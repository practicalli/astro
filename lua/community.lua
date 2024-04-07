-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder

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

  -- switch between projects
  { import = "astrocommunity.project.project-nvim" },

  -- Search and replace across projects
  { import = "astrocommunity.project.nvim-spectre" },
  -- ----------------------------------------------
  -- ----------------------------------------------
}
