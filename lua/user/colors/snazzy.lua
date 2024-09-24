local M = {}

M.colors = {
  bg = "#272935",
  fg = "#eff0ea",
  black = "#000000",
  red = "#ff5b56",
  green = "#5af78d",
  yellow = "#f3f99c",
  blue = "#57c7fe",
  magenta = "#ff69c0",
  cyan = "#9aecfe",
  white = "#f1f1f0",
  bright_black = "#686767",
  bright_red = "#ff5b56",
  bright_green = "#5af78d",
  bright_yellow = "#f3f99c",
  bright_blue = "#57c7fe",
  bright_magenta = "#ff69c0",
  bright_cyan = "#9aecfe",
  bright_white = "#f1f1f0",
}

function M.setup()
  for group, colors in pairs(M.colors) do
      vim.api.nvim_set_hl(0, group, colors)
  end
end

function M.load()
  if vim.g.colors_name then
      vim.cmd("hi clear")
  end
  vim.o.termguicolors = true
  vim.g.colors_name = "snazzy"
  M.setup()
end

return M
