-- ------------------------------------------
-- Generate UML diagrams from PlantUML code
--
-- Shows image using OS image viewer
-- ------------------------------------------

if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  -- PlantUMl via external tool - key mapping
  {
    "AstroNvim/astrocore",
    opts = {
      options = {
        -- configure general options: vim.opt.<key>
      },
      g = {
        -- configure global vim variables: vim.g
      },
      mappings = {
        n = {
          -- ["<Leader>lu"] = { desc = "UML" },
          -- shell to plantuml binary
          -- ["<Leader>lu"] = { ':silent exec "!plantuml % && open %:s,clj,png,"<CR>', desc = "UML diagram" },
          -- shell to java and plantuml jar
          ["<Leader>lu"] = {
            ':silent exec "!/usr/bin/java -jar ~/.local/share/plantuml/current.jar % && open %:s,clj,png,"<CR>',
            desc = "UML diagram",
          },
        },
      },
    },
  },
}
