local M = {}

-- M.colors = {
--   bg = "#272935",
--   fg = "#eff0ea",
--   black = "#000000",
--   red = "#ff5b56",
--   green = "#5af78d",
--   yellow = "#f3f99c",
--   blue = "#57c7fe",
--   magenta = "#ff69c0",
--   cyan = "#9aecfe",
--   white = "#f1f1f0",
--   bright_black = "#686767",
--   bright_red = "#ff5b56",
--   bright_green = "#5af78d",
--   bright_yellow = "#f3f99c",
--   bright_blue = "#57c7fe",
--   bright_magenta = "#ff69c0",
--   bright_cyan = "#9aecfe",
--   bright_white = "#f1f1f0",
-- }


M.colors = {
  rosewater = "#f3f99c", -- Using yellow as rosewater
  flamingo = "#ff5b56", -- Using red as flamingo
  pink = "#ff69c0",
  mauve = "#ff69c0", -- Using magenta as mauve
  red = "#ff5b56",
  maroon = "#ff5b56", -- Using red as maroon
  peach = "#f3f99c", -- Using yellow as peach
  yellow = "#f3f99c",
  green = "#5af78d",
  teal = "#9aecfe", -- Using cyan as teal
  sky = "#57c7fe", -- Using blue as sky
  sapphire = "#9aecfe", -- Using cyan as sapphire
  blue = "#57c7fe",
  lavender = "#57c7fe", -- Using blue as lavender
  text = "#eff0ea",
  subtext1 = "#f1f1f0", -- Using white
  subtext0 = "#f1f1f0", -- Using white
  overlay2 = "#f1f1f0", -- Using white
  overlay1 = "#f1f1f0", -- Using white
  overlay0 = "#f1f1f0", -- Using white
  surface2 = "#686767", -- Using bright black
  surface1 = "#686767", -- Using bright black
  surface0 = "#686767", -- Using bright black
  base = "#272935",
  mantle = "#272935", -- Using bg color
  crust = "#000000", -- Using black
}

function M.setup()
  return M.colors
end

return M
