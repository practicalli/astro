-- ------------------------------------------
-- Additional Telescope plugins
--
-- AstroNvim provides telescope and many plugins
-- Include extra telescope plugins within the `return` map
--
-- https://github.com/nvim-telescope/telescope.nvim
-- ------------------------------------------

-- if true then return {} end -- WARN: COMMENT THIS LINE TO ACTIVATE THIS FILE

return {
  {
    -- Browse directory structure & create files
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function() require("telescope").load_extension "file_browser" end,
    event = "User AstroFile",
  },
}
