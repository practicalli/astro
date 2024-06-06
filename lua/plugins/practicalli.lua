-- ------------------------------------------
-- Practicalli specific customisations
--
-- Startup dashboard banner
-- `fd` as alternate `ESC` key mapping (better-escape.nvim)
-- Everforest colorscheme
-- Custom global options & key mpapings (via astrocore)
-- ------------------------------------------

-- INFO: Create a `lua/plugins/your-name.lua` for significant changes

-- if true then return {} end   INFO: Comment this line to deactivate configuration

---@type LazySpec
return {
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

  -- `fd` alternative to the `ESC` key
  {
    "max397574/better-escape.nvim",
    event = "InsertCharPre",
    opts = {
      timeout = 300,
      mapping = { "fd" },
    },
  },

  {
    -- AstroUI provides the basis for configuring the AstroNvim User Interface
    -- Configuration documentation can be found with `:h astroui`
    "AstroNvim/astroui",
    ---@type AstroUIOpts
    opts = {
      colorscheme = "everforest",
    },
  },

  -- ------------------------
  -- Practicalli Key Mappings
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
        g = {
          -- configure global vim variables: vim.g
          -- This can be found in the `lua/lazy_setup.lua` file
          VM_leader = "gm", -- Visual Multi Leader (multiple cursors - user plugin)
        },
      },
      mappings = {
        n = {
          -- normal mode key bindings
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,

          -- Toggle last open buffer
          ["<leader><tab>"] = { "<cmd>b#<cr>", desc = "Last tab" },

          -- Save prompting for file name
          ["<leader>W"] = { ":write ", desc = "Save as file" },

          -- mappings seen under group name "Buffer"
          ["<leader>b"] = { name = "Buffers" },
          ["<leader>bt"] = { name = "Tabs" },
          ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<leader>btn"] = { "<cmd>tabNext<cr>", desc = "Next tab" },
          ["<leader>bt<tab>"] = { "<cmd>tabprevious<cr>", desc = "Previous tab" },
          -- ["<leader>bD"] = { "<cmd>Bdelete<cr>", desc = "Delete buffer" },

          -- Find Menu
          -- browse via directory structure, create and modify paths
          ["<leader>fe"] = { "<cmd>Telescope file_browser<cr>", desc = "Explorer" },

          -- Projects
          ["<leader>fp"] = { "<cmd>Telescope projects<cr>", desc = "Projects" },

          -- Editing
          ["zZ"] = { "<cmd>ZenMode<cr>", desc = " Zen mode" },

          -- Git Menu
          -- Menu mappings
          ["<leader>gh"] = false, -- disable Reset Git Hunk mapping, used for Octo in plugins/github.lua
          ["<leader>gH"] = { function() require("gitsigns").stage_hunk() end, desc = "Stage Git hunk" },
          -- ["<leader>gn"] = { name = " Neogit" }, -- Neogit menu with alternate logo
        },
        t = {
          -- terminal? mode key bindings
        },
        v = {
          -- visual mode key bindings
        },
      },
    },
  },
}
