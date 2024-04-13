-- ------------------------------------------
-- Example AstroNvim Plugin Configuration
--
-- Examples showing how to add plugins and configuration
-- ------------------------------------------

if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Local variables
-- local variable_name = { "common", "values" }

---@type LazySpec
return {
  -- == Add or Override Plugins ==
  {
    "domain/project-name",
    -- lazy = true,  -- true: load at startup, false: load on filetype
    filetype = { "language", "*.fileextension" },
    dependencies = {
      "AstroNvim/astrocore",
      opts = {
        options = {
          -- configure general options: vim.opt.<key>
          g = {
            -- configure global vim variables: vim.g
          },
        },
        mappings = {
          n = {
            -- normal mode key bindings
            -- setting a mapping to false will disable it
            -- ["<esc>"] = false,
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
  },

  -- == AstroNvim Core - Add or Override config without additional plugin ==
  {
    "AstroNvim/astrocore",
    opts = {
      options = {
        -- configure general options: vim.opt.<key>
        g = {
          -- configure global vim variables: vim.g
        },
      },
      mappings = {
        n = {
          -- normal mode key bindings
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
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
